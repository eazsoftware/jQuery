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
            em {
                color: blue;
                font-weight: bold;
            }
            div {
                color: red;
            }
        </style>
        <jsp:include page="../jQueryScript.jsp" /> 
    </head>
    <body>

        <p>Once there was a <em title="huge, gigantic">large</em> dinosaur...</p>

        The title of the emphasis is:<div></div>

        <script>
            var title = $( "em" ).attr( "title" );
            $( "div" ).text( title );
        </script>

    </body>
</html>