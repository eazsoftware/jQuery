<!DOCTYPE html>
<html>
    <head>
        <style>
            td { color:blue; font-weight:bold; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <table>
            <tr><td>Row 1</td></tr>
            <tr><td>Row 2</td></tr>

            <tr><td>Row 3</td></tr>
        </table>
        <script>$("tr:first").css("font-style", "italic");</script>

    </body>
</html>