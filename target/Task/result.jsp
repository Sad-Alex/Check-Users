<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Task-1.0</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>

    <body class="w3-light-grey">

        <div class="w3-container w3-padding">
            <%
                request.setCharacterEncoding("UTF-8");
                if (request.getAttribute("userName") != null && request.getAttribute("haveUser") != null) {
                    boolean haveUser = (Boolean) request.getAttribute("haveUser");
                    String str = (String) request.getAttribute("userName");

                    if (str.isEmpty()) {
                        str = "<p>Неправильно введено имя пользователя! Попробуйте снова</p>";
                    } else if (haveUser) {
                        str = "<p>Пользователь \"" + str + "\" есть</p>";
                    } else {
                        str = "<p>Пользователя \"" + str + "\" нет</p>";
                    }
                    out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                                "   <h5>" + str + "</h5>\n" +
                                "</div>");
                }
            %>
        </div>

        <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
            <button onclick="location.href='/check.jsp'">Назад</button>
        </div>
    </body>
</html>