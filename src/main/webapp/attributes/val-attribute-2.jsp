<%-- 
    Document   : val-attribute
    Created on : 26-Oct-2013, 14:11:09
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>val demo</title>
        <style>
            p {
                color: blue;
                margin: 8px;
            }
        </style>
        <jsp:include page="../header.jsp" />
    </head>
    <body>

        <input type="text" value="some text">
        <p></p>

        <script>
            $( "input" )
            .keyup(function() {
                var value = $( this ).val();
                $( "p" ).text( value );
            })
            .keyup();
        </script>

    </body>
</html>
