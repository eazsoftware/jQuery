<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../jQueryScript.jsp" />        
    </head>
    <body>
        <p>Description: Attach a function to be executed whenever an Ajax request completes successfully.</p>
        <div class="trigger">Trigger</div>
        <div class="result">result</div>
        <div class="log">log</div>
        <script>
            $(document).ajaxSuccess(function() {
                $( ".log" ).text( "Triggered ajaxSuccess handler." );
            });           
        </script>        

        <script>
            $( ".trigger" ).on("click", function() {
                $( ".result" ).load( "whattimeisit.jsp?name=Javier" );
            });
        </script>        
    </body>
</html>

