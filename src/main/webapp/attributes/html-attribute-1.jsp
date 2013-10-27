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
            p {
                margin: 8px;
                font-size: 20px;
                color: blue;
                cursor: pointer;
            }
            b {
                text-decoration: underline;
            }
            button {
                cursor: pointer;
            }
        </style>
        <jsp:include page="../jQueryScript.jsp" />
    </head>
    <body>

        <p>
            <b>Click</b> to change the <span id="tag">html</span>
        </p>
        <p>
            to a <span id="text">text</span> node.
        </p>
        <p>
            This <button name="nada">button</button> does nothing.
        </p>

        <script>
            $( "p" ).click(function() {
                var htmlString = $( this ).html();
                $( this ).text( htmlString );
            });
        </script>

    </body>
</html>
