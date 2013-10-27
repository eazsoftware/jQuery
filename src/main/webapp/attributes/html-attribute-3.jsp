<%-- 
    Document   : html-attribute
    Created on : 26-Oct-2013, 14:09:30
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>html demo</title>
        <style>
            div {
                color: blue;
                font-size: 18px;
            }
        </style>
        <jsp:include page="../header.jsp" /> 
    </head>
    <body>

        <div></div>
        <div></div>
        <div></div>

        <script>
            $( "div" ).html( "<b>Wow!</b> Such excitement..." );
            $( "div b" )
            .append( document.createTextNode( "!!!" ) )
            .css( "color", "red" );
        </script>

    </body>
</html>
