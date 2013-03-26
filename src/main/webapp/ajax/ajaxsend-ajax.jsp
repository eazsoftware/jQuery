<%-- 
    Document   : ajaxsend-ajax
    Created on : 15-Mar-2013, 19:47:17
    Author     : javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../jQueryScript.jsp" />        
    </head>
    <body>
        <p>Description: Attach a function to be executed before an Ajax request is sent.</p>
        <div id="trigger" class="trigger">Trigger</div>      
        <div id="result" class="result">result</div>
        <div id="log" class="log">log</div>
        <div id="extra" class="extra">extra</div>

        <script>
            $(document).ajaxSend(function() {
                $( ".log" ).text( "Triggered ajaxSend handler." );
            });            
        </script>        

        <script>
            $( ".trigger" ).click(function() {
                $( ".result" ).load( "whattimeisit.jsp?name=Javier" );
            });  
            
            $(document).ajaxSend(function(event, jqxhr, settings) {
                if ( settings.url == "whattimeisit.jsp" ) {
                    $( ".extra" ).text( "Triggered ajaxSend handler." );
                }
            });            
        </script>        
    </body>
</html>
