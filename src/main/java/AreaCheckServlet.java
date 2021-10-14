import value.Value;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

public class AreaCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Проверка для очистки таблицы
        String clear = request.getParameter("clear_table");
        if (clear != null) {
            if (clear.equals("clear")) {
                getServletContext().setAttribute("lastResults", null);
                request.getRequestDispatcher("/page.jsp").forward(request, response);
                return;
            }
        }

        long startTime = System.nanoTime();

        // Определеие коллекции предыдущих результатов
        List<Value> lastResults = (List<Value>) getServletContext().getAttribute("lastResults");
        if (lastResults == null) {
            lastResults = new ArrayList<>();
        }

        try {
            double x_coordinate = parseToDouble(request.getParameter("x_coordinate"));
            double y_coordinate = parseToDouble(request.getParameter("y_coordinate"));
            double r_coordinate = parseToDouble(request.getParameter("r_coordinate"));

            if (checkMinusZero(request.getParameter("x_coordinate")) || checkMinusZero(request.getParameter("y_coordinate")) || checkMinusZero(request.getParameter("r_coordinate"))) {
                errorValue(request, response);
                return;
            }

            if (checkX(x_coordinate) && checkY(y_coordinate) && checkR(r_coordinate)) {
                // Передача координат в виде чисел
                request.setAttribute("x_coordinate", x_coordinate);
                request.setAttribute("y_coordinate", y_coordinate);
                request.setAttribute("r_coordinate", r_coordinate);

                // Определение попадания точки
                if (checkArea(x_coordinate, y_coordinate, r_coordinate)) {
                    request.setAttribute("penetration", "Точка лежит в области");
                } else {
                    request.setAttribute("penetration", "Точка не лежит в области");
                }

                // Время работы проверки точки на нахождение в области
                long workTime = (System.nanoTime() - startTime) / 1000;
                request.setAttribute("work_time", workTime);

                // Определение текущего времени
                Date dateNow = new Date();
                SimpleDateFormat formatForDateNow = new SimpleDateFormat("HH:mm:ss");
                request.setAttribute("current_time", formatForDateNow.format(dateNow));

                // Добавление в прошлые результаты
                lastResults.add(new Value(x_coordinate,
                        y_coordinate,
                        r_coordinate,
                        String.valueOf(workTime),
                        formatForDateNow.format(dateNow),
                        checkArea(x_coordinate, y_coordinate, r_coordinate)));
                getServletContext().setAttribute("lastResults", lastResults);
                // Переадресация на вывод
                request.getRequestDispatcher("/table.jsp").forward(request, response);
            } else {
                errorValue(request, response);
            }
        } catch (NumberFormatException e) {
            errorValue(request, response);
        }
    }

    private double parseToDouble(String value) {
        value = value.replace(',', '.');
        return Double.parseDouble(value);
    }

    private boolean checkX(double x) {
        return x >= -5 && x <= 3;
    }

    private boolean checkY(double y) {
        return y > -3 && y < 3;
    }

    private boolean checkR(double r) {
        return r >= 1 && r <= 5;
    }

    private boolean checkArea(double x, double y, double r) {
        if (x <= 0 && x >= -r && y <= 0 && y >= -r / 2 - 0.000001) {
            return true;
        }

        if (x >= 0 && x <= r && y <= 0 && y >= -r && y >= x - r) {
            return true;
        }

        if (x >= 0 && x <= r / 2 + 0.000001 && y >= 0 && y <= r / 2 + 0.000001) {
            if (distanceToPointFromBegin(x, y) <= r / 2 + 0.000001) return true;
        }

        return false;
    }

    private double distanceToPointFromBegin(double x, double y) {
        return Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
    }

    private void errorValue(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/error.jsp").forward(request, response);
    }

    private boolean checkMinusZero(String value) {
        if (value.equals("-0")) {
            return true;
        }
        return false;
    }
}
