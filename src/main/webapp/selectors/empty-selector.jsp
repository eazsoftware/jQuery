<!DOCTYPE html>
<html>
    <head>
        <style>

            td { text-align:center; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <table border="1">
            <tr><td>TD #0</td><td></td></tr>
            <tr><td>TD #2</td><td></td></tr>

            <tr><td></td><td>TD#5</td></tr>
        </table>
        <script>$("td:empty").text("Was empty!").css('background', 'rgb(255,220,200)');</script>

    </body>
</html>