<%@ page import="java.util.*" %>
<%@ page import="value.Value" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Lab_2</title>

    <link rel="stylesheet" href="fonts/GothamPro/stylesheet.css" type="text/css">
    <link rel="stylesheet" href="css/index.css" type="text/css">
</head>
<body>
<header>
    <h1 class="student_name">Мокров Семён Андреевич P3215</h1>
    <h1 class="lab_option">Вариант №15322</h1>
</header>
<main>
    <div class="coordinates_picture">
        <svg viewBox="0 0 300 300">
            <rect x="50" y="150" width="100" height="50" style="stroke-opacity: 0.6; fill: rgb(51, 153, 255);"/>
            <rect x="761.101" y="270.492" width="0.74" height="0.74" style="fill: rgb(216, 216, 216); fill-opacity: 0.6;"/>
            <path style="fill: rgb(51, 153, 255);" transform="matrix(0, 0.798786, -0.798786, 0, 272.214264, -104.972481)" d="M 256.605 153 A 62.595 62.595 0 0 1 319.2 90.405 L 319.2 153 Z" bx:shape="pie 319.2 153 0 62.595 270 360 1@674ad589"/>
            <path d="M 75.398 19.463 L 175.398 119.463 L 75.398 119.463 L 75.398 19.463 Z" style="fill: rgb(51, 153, 255);" transform="matrix(-0.000001, 1, -1, -0.000001, 269.463165, 74.602119)" bx:shape="triangle 75.398 19.463 100 100 0 0 1@84d7bec2" bx:origin="0.25 1.499999"/>
            <line style="stroke: rgb(0, 0, 0);" x1="25" y1="149.5" x2="275" y2="150.5" bx:origin="0.500692 0"/>
            <line style="stroke: rgb(0, 0, 0);" x1="150" y1="25" x2="150" y2="275" transform="matrix(-1, 0, 0, -1, 300, 300)"/>
            <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 19.225px; font-weight: 700; white-space: pre;" transform="matrix(0.321932, 0, 0, 0.416125, 213.714233, 121.107925)" x="106.508" y="57.716">R</text>
            <line style="stroke: rgb(0, 0, 0);" x1="50" y1="148" x2="50" y2="152"/>
            <line style="stroke: rgb(0, 0, 0);" x1="100" y1="148" x2="100" y2="152"/>
            <line style="stroke: rgb(0, 0, 0);" x1="200" y1="148" x2="200" y2="152"/>
            <line style="stroke: rgb(0, 0, 0);" x1="250" y1="148" x2="250" y2="152"/>
            <line style="stroke: rgb(0, 0, 0);" x1="150" y1="48" x2="150" y2="52" transform="matrix(0, 1, -1, 0, 200, -100)"></line>
            <line style="stroke: rgb(0, 0, 0);" x1="150" y1="248" x2="150" y2="252" transform="matrix(0, 1, -1, 0, 400, 100)"></line>
            <line style="stroke: rgb(0, 0, 0);" x1="150" y1="98" x2="150" y2="102" transform="matrix(0, 1, -1, 0, 250, -50)"></line>
            <line style="stroke: rgb(0, 0, 0);" x1="150" y1="198" x2="150" y2="202" transform="matrix(0, 1, -1, 0, 350, 50)"></line>
            <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 19.225px; font-weight: 700; white-space: pre;" transform="matrix(0.321932, 0, 0, 0.416125, 120.714241, 78.107925)" x="106.508" y="57.716">R/2</text>
            <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 19.225px; font-weight: 700; white-space: pre;" transform="matrix(0.321932, 0, 0, 0.416125, 120.714241, 29.036404)" x="106.508" y="57.716">R</text>
            <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 19.225px; font-weight: 700; white-space: pre;" transform="matrix(0.321932, 0, 0, 0.416125, 120.714233, 228.107925)" x="106.508" y="57.716">-R</text>
            <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 19.225px; font-weight: 700; white-space: pre;" transform="matrix(0.321932, 0, 0, 0.416125, 11.71424, 121.107925)" x="106.508" y="57.716">-R</text>
            <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 19.225px; font-weight: 700; white-space: pre;" transform="matrix(0.321932, 0, 0, 0.416125, 120.714241, 178.107925)" x="106.508" y="57.716">-R/2</text>
            <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 19.225px; font-weight: 700; white-space: pre;" transform="matrix(0.321932, 0, 0, 0.416125, 58.714241, 121.107925)" x="106.508" y="57.716">-R/2</text>
            <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 19.225px; font-weight: 700; white-space: pre;" transform="matrix(0.321932, 0, 0, 0.416125, 158.714233, 121.107925)" x="106.508" y="57.716">-R/2</text>
            <path d="M 90.071 58.82 L 91.571 62.82 L 88.571 62.82 L 90.071 58.82 Z" style="" transform="matrix(1, -0.000004, 0.000004, 1, 59.928764, -36.820053)" bx:shape="triangle 88.571 58.82 3 4 0.5 0 1@01c55a16"/>
            <path d="M 122.788 31.44 L 124.288 35.44 L 121.288 35.44 L 122.788 31.44 Z" style="" transform="matrix(0.000077, -1, -1, -0.000077, 310.430658, 273.290742)" bx:shape="triangle 121.288 31.44 3 4 0.5 0 1@511d04ab"/>
            <%
                List<Value> lastResults = (List<Value>) request.getServletContext().getAttribute("lastResults");
                if (lastResults != null) {
                    Value lastValue = lastResults.get(lastResults.size() - 1);
                    double x_request = lastValue.getX();
                    double y_request = lastValue.getY();
                    double r_request = lastValue.getR();

                    double x_value = x_request / r_request * 100 + 150;
                    double y_value = 150 - (y_request) / r_request * 100;

                    out.println("<circle cx=\"" + x_value + "\" cy=\"" + y_value + "\" r=\"2.5\" fill=\"black\" />");
                }

            %>
        </svg>
    </div>
    <form class="form_with_coordinates" id="form_with_coordinates" method="GET" action="">
        <div class="x_coordinate">
            <div class="coordinate_name"><span>Введите x-координату:</span></div>
            <div class="coordinate_input">
                <input type="checkbox" name="x_coordinate" value="-5"><span>-5</span>
                <input type="checkbox" name="x_coordinate" value="-4"><span>-4</span>
                <input type="checkbox" name="x_coordinate" value="-3"><span>-3</span>
                <input type="checkbox" name="x_coordinate" value="-2"><span>-2</span>
                <input type="checkbox" name="x_coordinate" value="-1"><span>-1</span>
                <input type="checkbox" name="x_coordinate" value="0"><span>0</span>
                <input type="checkbox" name="x_coordinate" value="1"><span>1</span>
                <input type="checkbox" name="x_coordinate" value="2"><span>2</span>
                <input type="checkbox" name="x_coordinate" value="3"><span>3</span>
            </div>
            <div class="x_error"></div>
        </div>
        <div class="y_coordinate">
            <div class="coordinate_name"><span>Введите y-координату:</span></div>
            <div class="coordinate_input">
                <input id="y_coordinate" type="text" name="y_coordinate" placeholder="(-3, ... ,3)" autocomplete="off">
            </div>
            <div class="y_error"></div>
        </div>
        <div class="r_coordinate">
            <div class="coordinate_name"><span>Введите R:</span></div>
            <div class="coordinate_input">
                <select name="r_coordinate" id="r_coordinate_select" onchange="changeR()">
                    <option selected>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
        </div>
        <div class="submit_and_get_result">
            <div class="submit_button">
                <input type="submit" name="coordinates_button" value="Проверить точку">
            </div>
        </div>
    </form>
    <div class="past_results">
        <table class="past_table">
            <%
                if (lastResults != null) {
            %>
            <thead>
            <tr>
                <th>X</th>
                <th>Y</th>
                <th>R</th>
                <th>Время выполнения</th>
                <th>Время</th>
                <th>Точка попала?</th>
            </tr>
            </thead>
            <tbody>
            <%for (Value value : lastResults) {%>
            <tr>
                <td><%=value.getX() + ""%>
                </td>
                <td><%=value.getY() + ""%>
                </td>
                <td><%=value.getR() + ""%>
                </td>
                <td><%=value.getWork_time() + " мкс"%>
                </td>
                <td><%=value.getCurrent_time()%>
                </td>
                <td>
                    <% if (value.isPenetration()) {
                        out.println("Да");
                    } else {
                        out.println("Нет");
                    }
                    %>
                </td>
            </tr>
            <%}%>
            </tbody>
        </table>
        <div class="clear_table">
            <form method="GET" action="">
                <input type="hidden" name="clear_table" value="clear">
                <input type="submit" class="clear_button" value="Очистить таблицу">
            </form>
        </div>
    </div>
</main>
<%}%>

<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/script.js"></script>

</body>
</html>

