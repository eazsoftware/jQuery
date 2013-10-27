<%-- 
    Document   : attr-attribute
    Created on : 26-Oct-2013, 14:09:00
    Author     : javier
--%>

3
34
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>attr demo</title>
        <style>
            p {
                margin: 20px 0 0;
            }
            b {
                color: blue;
            }
        </style>
        <jsp:include page="../jQueryScript.jsp" /> 
    </head>
    <body>

        <input id="check1" type="checkbox" checked="checked">
        <label for="check1">Check me</label>
        <p></p>

        <script>
            $( "input" )
            .change(function() {
                var $input = $( this );
                $( "p" ).html( ".attr( 'checked' ): <b>" + $input.attr( "checked" ) + "</b><br>" +
                    ".prop( 'checked' ): <b>" + $input.prop( "checked" ) + "</b><br>" +
                    ".is( ':checked' ): <b>" + $input.is( ":checked" ) + "</b>" );
            })
            .change();
        </script>

    </body>
</html>
