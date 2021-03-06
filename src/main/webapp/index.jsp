<!-- jsp:include VS @include
     http://stackoverflow.com/questions/7879906/what-is-the-difference-between-jspinclude-page-and-include-file.
     http://www.objectpartners.com/2011/04/14/jsp-to-include-or-jspinclude/ 
-->
<jsp:include page="header.jsp" /> 
<body>
    <h1>JQueryUI</h1>

    <ul style="list-style-type:circle">
        <li><a href="ajax/index-all-ajax.jsp"><h4>All Ajax</h4></a></li>
        <ul>
            <li><a href="ajax/index-globalajaxeventhandlers-ajax.jsp"><h4>Ajax - Global Ajax Event Handlers</h4></a></li>
            <li><a href="ajax/index-helper-functions.jsp"><h4>Ajax - Helper functions</h4></a></li>        
            <li><a href="ajax/index-low-level-interface.jsp"><h4>Ajax - Low level interface</h4></a></li>                
            <li><a href="ajax/index-shorthand-methods.jsp"><h4>Ajax - Shorthand methods</h4></a></li>         
        </ul>
    </ul>  
    
    <ul style="list-style-type:circle">
        <li><a href="attributes/index-all-attributes.jsp"><h4>All attributes</h4></a></li>
    </ul>     
    
    <ul style="list-style-type:disc">
        <li><a href="selectors/index-all-selectors.jsp"><h4>All Selectors</h4></a></li>
        <ul>
            <li><a href="selectors/index-attributes-selectors.jsp"><h4>Selectors - attributes</h4></a></li>
            <li><a href="selectors/index-basic-filter-selectors.jsp"><h4>Selectors - basic filter</h4></a></li>        
            <li><a href="selectors/index-basic-selectors.jsp"><h4>Selectors - basic</h4></a></li>                
            <li><a href="selectors/index-child-filter-selectors.jsp"><h4>Selectors - child filter</h4></a></li>
            <li><a href="selectors/index-content-filter-selectors.jsp"><h4>Selectors - content filter</h4></a></li>        
            <li><a href="selectors/index-form-selectors.jsp"><h4>Selectors - form</h4></a></li>                
            <li><a href="selectors/index-hierarchy-selectors.jsp"><h4>Selectors - hierarchy</h4></a></li>
            <li><a href="selectors/index-jquery-extensions-selectors.jsp"><h4>Selectors - jQuery extensions</h4></a></li>            
        </ul>
    </ul>         
    
</body>
<jsp:include page="footer.jsp" /> 
