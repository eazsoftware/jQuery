<!-- jsp:include VS @include
     http://stackoverflow.com/questions/7879906/what-is-the-difference-between-jspinclude-page-and-include-file.
     http://www.objectpartners.com/2011/04/14/jsp-to-include-or-jspinclude/ 
-->
<jsp:include page="../header.jsp" /> 
<body>
    <h1>JQueryUI Attributes Selectors</h1>
    
    <a href="http://api.jquery.com/category/selectors/attribute-selectors/"><h3>Attributes selectors in jquery.com</h3></a>
    
    <span>
        The CSS specification allows elements to be identified by their attributes. While not supported by some older browsers for the purpose of styling documents, jQuery allows you to employ them regardless of the browser being used.

        When using any of the following attribute selectors, you should account for attributes that have multiple, space-separated values. Since these selectors see attribute values as a single string, this selector, for example, $("a[rel='nofollow']"), will select <a href="example.html" rel="nofollow">Some text</a> but not <a href="example.html" rel="nofollow foe">Some text</a>.

        Attribute values in selector expressions must follow the rules for W3C CSS selectors; in general, that means anything other than a valid identifier should be surrounded by quotation marks.

        double quotes inside single quotes: $('a[rel="nofollow self"]')
        single quotes inside double quotes: $("a[rel='nofollow self']")
        escaped single quotes inside single quotes: $('a[rel=\'nofollow self\']')
        escaped double quotes inside double quotes: $("a[rel=\"nofollow self\"]")        
    </span>
    
    <ul style="list-style-type:disc">
        <li><a href="attribute-contains-prefix-selector.jsp"><h4>Attribute Contains Prefix Selector [name|="value"]</h4></a></li>        
        <li><a href="attribute-contains-selector.jsp"><h4>Attribute Contains Selector [name*="value"]</h4></a></li>                
        <li><a href="attribute-contains-word-selector.jsp"><h4>Attribute Contains Word Selector [name~="value"]</h4></a></li>
        <li><a href="attribute-ends-with-selector.jsp"><h4>Attribute Ends With Selector [name$="value"]</h4></a></li>
        <li><a href="attribute-equals-selector.jsp"><h4>Attribute Equals Selector [name="value"]</h4></a></li>
        <li><a href="attribute-notequal-selector.jsp"><h4>Attribute Not Equal Selector [name!="value"]</h4></a></li>
        <li><a href="attribute-starts-with-selector.jsp"><h4>Attribute Starts With Selector [name^="value"]</h4></a></li>        
        <li><a href="has-attribute-name-selector.jsp"><h4>Has attribute [name] selector</h4></a></li>         
        <li><a href="multiple-attribute-selector.jsp"><h4>Multiple Attribute Selector selector</h4></a></li>                
    </ul>         
    
</body>
<jsp:include page="../footer.jsp" /> 
