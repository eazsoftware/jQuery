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
                <p><b>datatype - JSON</b> | complete | success</p>
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

        <div id="example3">
            <div>
                <p><b>datatype - XML</b> | complete | success</p>
                <button id="trigger3">Trigger
            </div>      
            <div id="result3" class="result">result</div>
            <div id="log3">log</div>
            <hr/>

            <script>
                $( "#trigger3" ).click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-xml.jsp?name=Javier',
                        dataType: 'xml',
                        complete: function(){
                            $( "#log3" ).text( "Ajax call completed." );
                        },
                        success: function( xml ){
                            $( "#result3" ).text( $(xml).find("salutation").text() + " # " + $(xml).find("time").text());
                            
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>
        
        <div id="example4">
            <div>
                <p><b>datatype - HTML</b> | complete | success</p>
                <button id="trigger4">Trigger
            </div>      
            <div id="result4" class="result">result</div>
            <div id="log4">log</div>
            <hr/>

            <script>
                $( "#trigger4" ).click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-html.jsp?name=Javier',
                        dataType: 'xml',
                        complete: function(){
                            $( "#log4" ).text( "Ajax call completed." );
                        },
                        success: function( result ){
                            $( "#result4" ).text( $(result).find("div#saludation").text() + " # " + $(result).find("div#time").text() );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>

        <div id="example5">
            $.ajax <i>accept</i> parameter is actually ignored!!!
            <div>
                <p><b>accepts - HTML (only)</b> | complete | success</p>
                <button id="trigger5">Trigger
            </div>      
            <div id="result5" class="result">result</div>
            <div id="log5">log</div>
            <hr/>

            <script>
                $( "#trigger5" ).click(            
                function() {
                    $.ajax(
                    {
                        accepts: "application/html", //That parameter is actually ignored!!!
                        url: 'whattimeisit-html.jsp?name=Javier',
                        dataType: 'xml',
                        complete: function(){
                            $( "#log5" ).text( "Ajax call completed." );
                        },
                        success: function( result ){
                            $( "#result5" ).text( $(result).find("div#saludation").text() + " # " + $(result).find("div#time").text() );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>        

        <div id="example6">
            <div>
                <p><b>accepts - JSON (only) but fails cause it receives HTML</b> | complete | success | error</p>
                <button id="trigger6">Trigger
            </div>      
            <div id="result6" class="result">result</div>
            <div id="log6">log</div>
            <hr/>

            <script>
                $( "#trigger6" ).click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-html.jsp?name=Javier',
                        dataType: 'json',
                        complete: function(){
                            $( "#log6" ).text( "Ajax call completed." );
                        },
                        success: function( result ){
                            $( "#result6" ).text( $(result).find("div#saludation").text() + " # " + $(result).find("div#time").text() );
                        },
                        error: function(xhr, status, error) { 
                            $( "#result6" ).text( status + " # " + error );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>        
        

        <div id="example7">
            <div>
                <p><b>Set a Request Header in a JQuery Ajax Call using beforeSend - HTML (only)</b> | complete | success | <b>beforeSend</b></p>
                <button id="trigger7">Trigger
            </div>      
            <div id="result7" class="result">result</div>
            <div id="log7">log</div>
            <hr/>
            
            <script>
                $( "#trigger7" ).click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-html.jsp?name=Javier',
                        dataType: 'xml',
                        complete: function(){
                            $( "#log7" ).text( "Ajax call completed." );
                        },
                        success: function( result ){
                            $( "#result7" ).text( $(result).find("div#saludation").text() + " # " + $(result).find("div#time").text() );
                        },
                        error: function(xhr, status, error) { 
                            $( "#result7" ).text( status + " # " + error );
                        },
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("Accept", "application/html");
                            $('#log7').text('Loading...');
                        }             
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>  
        

        <div id="example8">
            http://www.funcion13.com/2012/04/19/la-cache-en-las-peticiones-ajax-de-jquery/
            <p>
                Si lo que quieres es desactivar la caché para todas las peticiones AJAX, 
                en todas las cargas de tu página por defecto, asegúrate de incluir esto al 
                inicio de tu página, después de que jQuery haya cargado:

                $.ajaxSetup({ cache:false });
            </p>          
            <div>
                <p><b>cache false</b> | complete | success | <b>cache</b></p>
                <button id="trigger8">Trigger
            </div>      
            <div id="result8" class="result">result</div>
            <div id="log8">log</div>
            <hr/>
            
            <script>
                $( "#trigger8" ).click(            
                function() {
                    $.ajax(
                    {                        
                        url: 'whattimeisit-html.jsp?name=Javier',
                        dataType: 'xml',
                        cache: 'false',
                        complete: function(){
                            $( "#log8" ).text( "Ajax call completed." );
                        },
                        success: function( result ){
                            $( "#result8" ).text( $(result).find("div#saludation").text() + " # " + $(result).find("div#time").text() );
                        }                       
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>  
        
        <div id="example9">
            http://coursesweb.net/jquery/jquery-ajax          
            <div>
                <p><b>cache true</b> | complete | success | <b>true</b></p>
                <button id="trigger9">Trigger
            </div>      
            <div id="result9" class="result">result</div>
            <div id="log9">log</div>
            <hr/>
            
            <script>
                $( "#trigger9" ).click(            
                function() {
                    $.ajax(
                    {                        
                        url: 'whattimeisit-static-html.jsp',
                        dataType: 'xml',
                        cache: "true",
                        complete: function(){
                            $( "#log9" ).text( "Ajax call completed." );
                        },
                        success: function( result ){
                            $( "#result9" ).text( $(result).find("div#saludation").text() + " # " + $(result).find("div#time").text() );
                        }                       
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>

        <div id="example10">   
            http://stackoverflow.com/questions/3863536/how-to-pass-context-in-jquery-ajax-success-callback-function
            <div>
                <p><b>context</b> | complete | success</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example10');
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp?name=Javier',
                        dataType: 'json',
                        context: examplediv, //this == examplediv
                        complete: function(){
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div> 
        
        <div id="example11">   
            http://stackoverflow.com/questions/3863536/how-to-pass-context-in-jquery-ajax-success-callback-function
            <div>
                <p><b>converters</b> | context | complete | success</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example11');
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-text.jsp?name=Javier',
                        dataType: 'json',
                        context: examplediv,
                        converters: {"text json": jQuery.parseJSON}, // BY DEFAULT: {"* text": window.String, "text html": true, "text json": jQuery.parseJSON, "text xml": jQuery.parseXML}
                        //converters: {"text json": jQuery.parseXML}
                        complete: function(){
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>
        
        <div id="example12">   
            http://www.codeproject.com/Articles/78757/Making-Cross-Domain-jQuery-AJAX-Calls
            <div>
                <p><b>crossDomain</b> (twitter) | context | complete | success</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example12');
                
                $(examplediv).find('.trigger').click(            
                function() {
                    var twitterID = 'Pontifex';
                    $.ajax(
                    {
                        //url: 'whattimeisit-json.jsp?name=Javier',
                        url: 'https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name='+twitterID+'&count=2&callback=?',
                        dataType: 'json',
                        context: examplediv,
                        crossDomain: true,
                        complete: function() {
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ) {
                            var parent = $(this);
                            $(this).find( ".result" ).html("");
                            if(strData){
                                console.log(strData);
                                $.each(strData, function(index, el) {
                                    $(parent).find( ".result" ).append('<span>' + el.text + '</span><br />');
                                });
                            }
                            else {
                                $(this).find( ".log" ).append('<span>No tweets found for <b>' + twitterID + '</b></span><br />');
                            }                            
                        },
                        error: function(xhr, status, error) { 
                            $(this).find( ".log" ).append('<span>No tweets found for <b>' + twitterID + '</b></span><br />');
                        }                         
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div> 
        
        <div id="example13">   
            <div>
                <p><b>data</b> | context | complete | success</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example13');
                
                var mydata = { name: "Javier",
                               otherparam: "ignoredvalue" };
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        complete: function(){
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>
        
        <div id="example15">   
            http://stackoverflow.com/questions/5158455/combining-jquery-load-and-ajax-datafilter
            <div>
                <p><b>dataFilter</b> ("Bon jour instead of Hi") | data | context | complete | success</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var mydata = { name: "Javier" };
                
                $('#example15').find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: $('#example15'),
                        data: mydata,
                        dataFilter: function (data, type) {
                            return data.replace("Hi", "Bon jour");
                        },
                        complete: function(){
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>          
        
        <div id="example16">
            <p>
                A map of additional header key/value pairs to send along with the request. 
                This setting is set before the beforeSend function is called; 
                therefore, any values in the headers setting can be overwritten from 
                within the beforeSend function.
            </p>
            <div>
                <p><b>headers</b> | data | context | complete | success</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var mydata = { name: "Javier" };
                
                $('#example16').find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: $('#example16'),
                        data: mydata,
                        headers: {
                            "Content-Type": "application/json", 
                            "Accept": "application/json",
                            "MyCustomHeader": "My custom header value"
                        },
                        complete: function(){
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>     
        
        <div id="example17">
            <p>
                http://www.jquery4u.com/json/jsonp-examples/
                http://stackoverflow.com/questions/7613815/callback-function-for-jsonp-with-jquery-ajax
                http://stackoverflow.com/questions/7613815/callback-function-for-jsonp-with-jquery-ajax
            </p>
            <div>
                <p><b>jsonpCallback</b> | data | context | complete | success</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var mydata = { name: "Javier" };
                
                var twitterID = 'Pontifex';
                
                var callbackTwitter = function(json) {
                    console.log(json);

                    var parentTemp = $('#example17');
                    $(parentTemp).find( ".result" ).html("");
                    if(json){
                        $.each(json, function(index, el) {
                            $(parentTemp).find( ".result" ).append('<span>' + el.text + '</span><br />');
                        });
                    }
                    else {
                        $(parentTemp).find( ".log" ).append('<span>No tweets found for <b>' + twitterID + '</b></span><br />');
                    }
                }
                
                $('#example17').find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name='+twitterID+'&count=2',
                        dataType: 'jsonp',
                        context: $('#example17'),
                        data: mydata,
                        //jsonp: false,
                        jsonpCallback: 'callbackTwitter',
                        complete: function(){
                            console.log("Ajax call completed.");
                        },
                        success: function( strData ) {
                            if(strData){
                                $.each(strData, function(index, el) {
                                    $('#example17').find( ".log" ).append('<span>' + el.text + '</span><br />');
                                });
                            }
                            else {
                                $('#example17').find( ".log" ).append('<span>No tweets found for <b>' + twitterID + '</b></span><br />');
                            }                            
                        },
                        error: function(xhr, status, error) { 
                            $(this).find( ".log" ).append('<span>'+error+'</b></span><br />');
                        }                             
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>     

        processData
        
        
    </body>
</html>
