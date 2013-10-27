<%-- 
    Document   : hasclass-attribute
    Created on : 26-Oct-2013, 14:09:14
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>hasClass demo</title>
        <style>
            p {
                margin: 8px;
                font-size: 16px;
            }
            .selected {
                color: red;
            }
        </style>
        <jsp:include page="../jQueryScript.jsp" />
    </head>
    <body>

        <p>This paragraph is black and is the first paragraph.</p>
        <p class="selected">This paragraph is red and is the second paragraph.</p>
        <div id="result1">First paragraph has selected class: </div>
        <div id="result2">Second paragraph has selected class: </div>
        <div id="result3">At least one paragraph has selected class: </div>

        <script>
            $( "#result1" ).append( $( "p:first" ).hasClass( "selected" ).toString() );
            $( "#result2" ).append( $( "p:last" ).hasClass( "selected" ).toString() );
            $( "#result3" ).append( $( "p" ).hasClass( "selected" ).toString() ) ;
        </script>

    </body>
</html>