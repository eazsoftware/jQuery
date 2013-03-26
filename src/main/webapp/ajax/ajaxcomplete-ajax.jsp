<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../jQueryScript.jsp" />        
    </head>
    <body>
        <p>Description: Register a handler to be called when Ajax requests complete.</p>
        <div id="trigger" class="trigger">Trigger</div>      
        <div id="result" class="result">result</div>
        <div id="log" class="log">log</div>

        <script>
            $( "#trigger" ).click(function() {
                $( "#result" ).load( "whattimeisit.jsp?name=Javier" );
            });             
        </script>        
        
        <script>
            $(document).ajaxComplete(function() {
                $( "#log" ).text( "Triggered ajaxComplete handler." );
            });            
        </script>        
    </body>
</html>