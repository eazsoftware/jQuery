<html>
    <head>
        <style>
            table {
                background:#f3f7f5;
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
        <script>$("tr:odd").css("background-color", "#bbbbff");</script>

    </body>
</html>