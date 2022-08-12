<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Task-1.0</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>

    <body class="w3-light-grey">

        <div class="w3-container w3-padding">
            <div class="w3-card-4">
                <div class="w3-container w3-center w3-green">
                    <h2>Найти пользователя</h2>
                </div>
                <form method="post" class="w3-selection w3-light-grey w3-padding" action="/check">
                    <label>Имя пользователя:
                        <input type="text" name="name" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
                    </label>
                    <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Проверить</button>
                </form>
            </div>
        </div>

        <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
            Александр Садаков (alexandro.2015cc@mail.ru)
        </div>
    </body>
</html>