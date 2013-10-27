<%-- 
    Document   : attr-attribute
    Created on : 26-Oct-2013, 14:09:00
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>attr demo</title>
        <jsp:include page="../jQueryScript.jsp" />
    </head>
    <body>

        <img title="hat.gif">

        <script>
            $( "img" ).attr( "src", function() {
                return "resources/" + this.title;
            });
        </script>

    </body>
</html>
