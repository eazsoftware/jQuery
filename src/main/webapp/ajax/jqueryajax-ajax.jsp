<%-- 
    Document   : jqueryajax-ajax
    Created on : 20-Mar-2013, 23:07:00
    Author     : javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../jQueryScript.jsp" />        
    </head>
    <body>
        <p>Description: Perform an asynchronous HTTP (Ajax) request. <a href="http://api.jquery.com/jQuery.ajax/">LINK</a></p>

        http://www.bennadel.com/resources/presentations/jquery/demo21/index.htm

        <div id="example1">
            <hr/>
            <div>
                <p>Simple Ajax | <b>complete</b> | success</p>
                <button id="trigger1">Trigger
            </div>      
            <div id="result1" class="result">result</div>
            <div id="log1">log</div>
            <hr/>

            <script>
                $( "#trigger1" ).click(            
                function() {
                    $.ajax(
                    {
                        // The link we are accessing.
                        url: 'whattimeisit.jsp?name=Javier',
                        complete: function(){
                            $( "#log1" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $( "#result1" ).text( strData );
                        }                        
                    }							
                );
                    return(false); // Prevent default click.
                });
            </script>
        </div>

        <div id="example2">
            http://stackoverflow.com/questions/11065252/what-is-the-point-of-jquery-ajax-accepts-attrib-does-it-actually-do-anything
            http://viralpatel.net/blogs/creating-parsing-json-data-with-java-servlet-struts-jsp-json/
            http://code.google.com/p/json-simple/wiki/JSPAndAJAXExamples
            http://stackoverflow.com/questions/6154845/returning-json-response-from-servlet-to-javascript-jsp-page
            <div>
                <p><b>datatype</b> | complete | success</p>
                <button id="trigger2">Trigger
            </div>      
            <div id="result2" class="result">result</div>
            <div id="log2">log</div>
            <hr/>

            <script>
                $( "#trigger2" ).click(            
                function() {
                    $.ajax(
                    {
                        // The link we are accessing.
                        url: 'whattimeisit-json.jsp?name=Javier',
                        dataType: 'json',
                        complete: function(){
                            $( "#log2" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $( "#result2" ).text( strData.Saludation + " # " + strData.Time );
                        }                        
                    }							
                );
                    return(false); // Prevent default click.
                });
            </script>
        </div>
        
    </body>
</html>
