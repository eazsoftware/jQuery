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
        <style>
            img {
                padding: 10px;
            }
            div {
                color: red;
                font-size: 24px;
            }
        </style>
        <jsp:include page="../jQueryScript.jsp" />
    </head>
    <body>

        <img>
        <img>
        <img>

        <div><b>Attribute of Ajax</b></div>

        <script>
            $( "img" ).attr({
                src: "resources/hat.gif",
                title: "jQuery",
                alt: "jQuery Logo"
            });
            $( "div" ).text( $( "img" ).attr( "alt" ) );
        </script>

    </body>
</html>
