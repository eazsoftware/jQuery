<!DOCTYPE html>
<html>
    <head>
        <style>
            table {
                background:#eeeeee;
            }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <table border="1">
            <tr><td>Row with Index #0</td></tr>
            <tr><td>Row with Index #1</td></tr>

            <tr><td>Row with Index #2</td></tr>
            <tr><td>Row with Index #3</td></tr>
        </table>
        <script>$("tr:even").css("background-color", "#bbbbff");</script>

    </body>
</html>