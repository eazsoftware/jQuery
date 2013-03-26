<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../jQueryScript.jsp" />        
    </head>
    <body>
        <p>Description: Register a handler to be called when the first Ajax request begins.</p>
        <div class="trigger" class="trigger">Trigger</div>      
        <div class="result" class="result">result</div>
        <div id="log">log</div>

        <script>
            $(document).ajaxStop(function() {
                $( "#log" ).text( "Triggered ajaxStop handler." );
            });            
        </script>        

        <script>
            $( ".trigger" ).click(function() {
                $( ".result" ).load( "whattimeisit.jsp?name=Javier");
            });
        </script>        
    </body>
</html>

