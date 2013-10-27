<%-- 
    Document   : removeattr-attribute
    Created on : 26-Oct-2013, 14:10:05
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>removeAttr demo</title>
        <jsp:include page="../header.jsp" />
    </head>
    <body>

        <button>Change title</button>
        <input type="text" title="hello there">
        <div id="log"></div>

        <script>
            (function() {
                var inputTitle = $( "input" ).attr( "title" );
                $( "button" ).click(function() {
                    var input = $( this ).next();
 
                    if ( input.attr( "title" ) === inputTitle ) {
                        input.removeAttr( "title" )
                    } else {
                        input.attr( "title", inputTitle );
                    }
 
                    $( "#log" ).html( "input title is now " + input.attr( "title" ) );
                });
            })();
        </script>

    </body>
</html>
