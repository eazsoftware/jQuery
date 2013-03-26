<%-- 
    Document   : ajaxerror-ajax
    Created on : 15-Mar-2013, 19:35:56
    Author     : javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../jQueryScript.jsp" />        
    </head>
    <body>
        <p>Description: Register a handler to be called when Ajax requests complete with an error.</p>
        <button class="trigger">Trigger</button>
        <div id="result" class="result">result</div>
        <div id="log" class="log">log</div>

        <script>
            $(document).ajaxError(function() {
                $( "div.log" ).text( "Triggered ajaxError handler." );
            });            
        </script>        

        <script>
            $( "button.trigger" ).click(function() {
                $( "div.result" ).load( "ajax/missing.html" );
            });           
        </script>        
    </body>
</html>