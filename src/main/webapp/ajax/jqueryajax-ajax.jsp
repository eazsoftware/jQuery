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

        <div id="example18">   
            <div>
                <p><b>processData</b> | data | context | complete | success</p>
                <p></p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example18');
                
                var mydata = "name=Javier&otherparam=ignoredvalue";
                //var mydata = { name: "Javier",
                //               otherparam: "ignoredvalue" }; //And set processData: false... we'll get a request like: "http://localhost:8084/jQuery/ajax/whattimeisit-json.jsp?[object%20Object]"
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        processData: true,
                        //processData: false,
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

        <div id="example19">   
            <div>
                <p><b>statusCode</b> | data | context | success</p>
                <p></p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example19');
                
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
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        },
                        statusCode: {
                          404: function() {
                            $(this).find( ".log" ).text( "Page not found" );
                          },
                          200: function() {
                            $(this).find( ".log" ).text( "Request accepted" );
                          }                          
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>         

        <div id="example20">   
            <div>
                <p><b>timeout</b> | data | context | complete | success</p>
                <p></p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example20');
                
                var mydata = "name=Javier&otherparam=ignoredvalue";
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        timeout: 450, //whattimeisit-json.jsp has a 500ms delay
                        complete: function(){
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        },                 
                        error: function(x, t, m) {
                            $(this).find( ".result" ).text( "Ajax call did NOT complete ["+t+"]" );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>        

        <div id="example21">   
            <div>
                <p><b>type - GET</b> | timeout | data | context | complete | success | error</p>
                <p></p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example21');
                
                var mydata = "name=Javier&otherparam=ignoredvalue";
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        timeout: 1000,
                        type: "GET",
                        complete: function(){
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        },                 
                        error: function(x, t, m) {
                            $(this).find( ".result" ).text( "Ajax call did NOT complete ["+t+"]" );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>   
        
        <div id="example22">   
            <div>
                <p><b>type - POST</b> | timeout | data | context | complete | success | error</p>
                <p></p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example22');
                
                var mydata = "name=Javier&otherparam=ignoredvalue";
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        timeout: 1000,
                        type: "POST",
                        complete: function(){
                            $(this).find( ".log" ).text( "Ajax call completed." );
                        },
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        },                 
                        error: function(x, t, m) {
                            $(this).find( ".result" ).text( "Ajax call did NOT complete ["+t+"]" );
                        }                        
                    }							
                    );
                    return(false); // Prevent default click.
                });
            </script>
        </div>
 
        <div id="example23">   
            <div>
                <p><b>jqXHR - DONE</b> | type | timeout | data | context | success | error</p>
                <p>The jQuery XMLHttpRequest (jqXHR) object returned by $.ajax() as of jQuery 1.5 is a 
                    superset of the browser's native XMLHttpRequest object. For example, it contains 
                    responseText and responseXML properties, as well as a getResponseHeader() method. 
                    When the transport mechanism is something other than XMLHttpRequest (for example, 
                    a script tag for a JSONP request) the jqXHR object simulates native XHR functionality 
                    where possible.</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example23');
                
                var mydata = "name=Javier&otherparam=ignoredvalue";
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        timeout: 1000,
                        type: "POST",
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        },                 
                        error: function(x, t, m) {
                            $(this).find( ".result" ).text( "Ajax call did NOT complete ["+t+"]" );
                        }                        
                    }).done(function(data, textStatus, jqXHR){
                            $(this).find( ".log" ).text( "jqXHR - " + textStatus );
                        });
                    
                    return(false); // Prevent default click.
                });
            </script>
        </div>

        <div id="example24">   
            <div>
                <p><b>jqXHR - FAIL</b> | type | timeout | data | context | success | error</p>
                <p>An alternative construct to the error callback option, the .fail() method 
                    replaces the deprecated .error() method. Refer to deferred.fail() for 
                    implementation details.</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example24');
                
                var mydata = "name=Javier&otherparam=ignoredvalue";
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        timeout: 400,
                        type: "POST",
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        },                 
                        error: function(x, t, m) {
                            $(this).find( ".result" ).text( "Ajax call did NOT complete ["+t+"]" );
                        }                        
                    }).fail(function(jqXHR, textStatus, errorThrown){
                            $(this).find( ".log" ).text( "jqXHR - " + textStatus );
                        });
                    
                    return(false); // Prevent default click.
                });
            </script>
        </div>

        <div id="example25">   
            <div>
                <p><b>jqXHR - ALWAYS</b> | type | timeout | data | context | success | error</p>
                <p>An alternative construct to the complete callback option, the .always() method 
                    replaces the deprecated .complete() method.

                    In response to a successful request, the function's arguments are the same as 
                    those of .done(): data, textStatus, and the jqXHR object. For failed requests 
                    the arguments are the same as those of .fail(): the jqXHR object, textStatus, 
                    and errorThrown. Refer to deferred.always() for implementation details.</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example25');
                
                var mydata = "name=Javier&otherparam=ignoredvalue";
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        timeout: 1000,
                        type: "POST",
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        },                 
                        error: function(x, t, m) {
                            $(this).find( ".result" ).text( "Ajax call did NOT complete ["+t+"]" );
                        }                        
                    }).always(function(data, textStatus, errorThrown) {
                            $(this).find( ".log" ).text( "jqXHR - " + textStatus );
                        });
                    
                    return(false); // Prevent default click.
                });
            </script>
        </div>

        <div id="example26">   
            <div>
                <p><b>jqXHR - THEN</b> | type | timeout | data | context | success | error</p>
                <p>Incorporates the functionality of the .done() and .fail() methods, allowing 
                    (as of jQuery 1.8) the underlying Promise to be manipulated. 
                    Refer to deferred.then() for implementation details.</p>
                <button class="trigger">Trigger
            </div>      
            <div class="result">result</div> 
            <div class="log">log</div>
            <hr/>
            
            <script>
                var examplediv = $('#example26');
                
                var mydata = "name=Javier&otherparam=ignoredvalue";
                
                $(examplediv).find('.trigger').click(            
                function() {
                    $.ajax(
                    {
                        url: 'whattimeisit-json.jsp',
                        dataType: 'json',
                        context: examplediv,
                        data: mydata,
                        timeout: 1000, //400 for fail
                        type: "POST",
                        success: function( strData ){
                            $(this).find( ".result" ).text( strData.Saludation + " # " + strData.Time );
                        },                 
                        error: function(x, t, m) {
                            $(this).find( ".result" ).text( "Ajax call did NOT complete ["+t+"]" );
                        }                        
                    }).then( function(data, textStatus, jqXHR) {
                                $(this).find( ".log" ).text( "jqXHR - " + textStatus );                        
                             },
                             function(jqXHR, textStatus, errorThrown) {
                                 $(this).find( ".log" ).text( "jqXHR - " + textStatus );
                             }
                       );
                    
                    return(false); // Prevent default click.
                });
            </script>
        </div>        

        For backward compatibility with XMLHttpRequest, a jqXHR object will expose the following properties and methods:
        
        
    </body>
</html>
