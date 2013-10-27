<%-- 
    Document   : removeclass-attribute
    Created on : 26-Oct-2013, 14:10:17
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>removeClass demo</title>
        <style>
            p {
                margin: 4px;
                font-size: 16px;
                font-weight: bolder;
            }
            .blue {
                color: blue;
            }
            .under {
                text-decoration: underline;
            }
            .highlight {
                background: yellow;
            }
        </style>
        <jsp:include page="../header.jsp" />
    </head>
    <body>

        <p class="blue under">Hello</p>
        <p class="blue under highlight">and</p>
        <p class="blue under">then</p>
        <p class="blue under">Goodbye</p>

        <script>
            $( "p:even" ).removeClass( "blue" );
        </script>

    </body>
</html>
