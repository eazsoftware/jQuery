<%-- 
    Document   : addclass-attribute
    Created on : 26-Oct-2013, 14:08:47
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>addClass demo</title>
        <style>
            p {
                margin: 8px;
                font-size: 16px;
            }
            .selected {
                color: blue;
            }
            .highlight {
                background: yellow;
            }
        </style>
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    </head>
    <body>

        <p>Hello</p>
        <p>and</p>
        <p>Goodbye</p>

        <script>
            $( "p" ).last().addClass( "selected" );
        </script>

    </body>
</html>
