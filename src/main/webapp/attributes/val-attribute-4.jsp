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
        <jsp:include page="../header.jsp" />
    </head>
    <body>

        <p>Type something and then click or tab out of the input.</p>
        <input type="text" value="type something">

        <script>
            $( "input" ).on( "blur", function() {
                $( this ).val(function( i, val ) {
                    return val.toUpperCase();
                });
            });
        </script>

    </body>
</html>
