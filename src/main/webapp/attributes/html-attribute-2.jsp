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
            .red {
                color: red;
            }
        </style>
        <jsp:include page="../header.jsp" /> 
    </head>
    <body>

        <span>Hello</span>
        <div></div>
        <div></div>
        <div></div>

        <script>
            $( "div" ).html( "<span class='red'>Hello <b>Again</b></span>" );
        </script>

    </body>
</html>
