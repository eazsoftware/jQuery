<!DOCTYPE html>
<html>
    <head>
        <style>
            span.fot { color: red; font-size: 120%; font-style: italic; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head> 
    <body>
        <div id="log">The root of this document is: </div>
        <script>
            $( "<b></b>" ).html( $( ":root" )[0].nodeName ).appendTo( "#log" );
        </script>

    </body>
</html>