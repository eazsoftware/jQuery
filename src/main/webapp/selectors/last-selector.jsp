<!DOCTYPE html>
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <table>

            <tr><td>First Row</td></tr>
            <tr><td>Middle Row</td></tr>
            <tr><td>Last Row</td></tr>

        </table>
        
        <table>

            <tr><td>First Row</td></tr>
            <tr><td>Middle Row</td></tr>
            <tr><td>Last Row</td></tr>

        </table>        
        <script>$("tr:last").css({backgroundColor: 'yellow', fontWeight: 'bolder'});</script>

    </body>
</html>