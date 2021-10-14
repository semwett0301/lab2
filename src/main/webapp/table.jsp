<%@ page import="java.util.*" %>
<%@ page import="value.Value" %><%--
  Created by IntelliJ IDEA.
  User: Семен
  Date: 12.10.2021
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Результат</title>
    <link rel="stylesheet" href="fonts/GothamPro/stylesheet.css" type="text/css">
    <link rel="stylesheet" href="css/index.css" type="text/css">
</head>
<body>
<div class="result_block">
    <table class="result_table">
        <tbody>
        <tr>
            <td>Полученный параметр x</td>
            <td class="x">
                <%=request.getAttribute("x_coordinate") %>
            </td>
        </tr>
        <tr>
            <td>Полученный параметр y</td>
            <td class="y">
                <%=request.getAttribute("y_coordinate") %>
            </td>
        </tr>
        <tr>
            <td>Полученный параметр R</td>
            <td class="r">
                <%=request.getAttribute("r_coordinate") %>
            </td>
        </tr>
        <tr>
            <td>Время выполнения</td>
            <td class="result_time">
                <%=request.getAttribute("work_time") + " мкс"%>
            </td>
        </tr>
        <tr>
            <td>Текущее время</td>
            <td class="tmp_time">
                <%=request.getAttribute("current_time")%>
            </td>
        </tr>
        <tr>
            <td colspan=2 class="hit"><%=request.getAttribute("penetration")%>
            </td>
        </tr>
        </tbody>
    </table>
    <div class="section_back_button">
        <a href="/lab2"><input type="button" class="back_button" value="Вернуться назад"></a>
    </div>
</div>
</body>
</html>
