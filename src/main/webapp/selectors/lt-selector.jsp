<!DOCTYPE html>
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <table border="1">

            <tr><td>TD #0</td><td>TD #1</td><td>TD #2</td></tr>
            <tr><td>TD #3</td><td>TD #4</td><td>TD #5</td></tr>

            <tr><td>TD #6</td><td>TD #7</td><td>TD #8</td></tr>
        </table>
        <script>$("td:lt(4)").css("color", "red");</script>

    </body>
</html>