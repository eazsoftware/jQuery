<!DOCTYPE html>
<html>
    <head>
        <style>
            td { width:40px; background:green; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <table border="1">
            <tr><td>Value 1</td><td></td></tr>
            <tr><td>Value 2</td><td></td></tr>
        </table>
        <script>$("td:parent").fadeTo(1500, 0.3);</script>

    </body>
</html>