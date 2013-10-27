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
            button {
                margin: 4px;
                cursor: pointer;
            }
            input {
                margin: 4px;
                color: blue;
            }
        </style>
        <jsp:include page="../header.jsp" />
    </head>
    <body>

        <div>
            <button>Feed</button>
            <button>the</button>
            <button>Input</button>
        </div>
        <input type="text" value="click a button">

        <script>
            $( "button" ).click(function() {
                var text = $( this ).text();
                $( "input" ).val( text );
            });
        </script>

    </body>
</html>
