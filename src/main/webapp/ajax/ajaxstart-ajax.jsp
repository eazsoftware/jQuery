<%-- 
    Document   : ajaxstart-ajax
    Created on : 15-Mar-2013, 20:07:45
    Author     : javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../jQueryScript.jsp" />        
    </head>
    <body>
        <p>Description: Register a handler to be called when the first Ajax request begins.</p>
        <div class="trigger">Trigger</div>      
        <div class="result">result</div>
        <div class="log">log</div>

        <script>
            $(document).ajaxStart(function() {
                $( ".log" ).text( "Triggered ajaxStart handler." );
            });            
        </script>        

        <script>
            $( ".trigger" ).click(function() {
                $( ".result" ).load( "whattimeisit.jsp?name=Javier" );
            });  
        </script>        
    </body>
</html>

