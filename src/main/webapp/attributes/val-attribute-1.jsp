<%-- 
    Document   : val-attribute
    Created on : 26-Oct-2013, 14:11:09
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>val demo</title>
        <style>
            p {
                color: red;
                margin: 4px;
            }
            b {
                color: blue;
            }
        </style>
        <jsp:include page="../header.jsp" />
    </head>
    <body>

        <p></p>

        <select id="single">
            <option>Single</option>
            <option>Single2</option>
        </select>

        <select id="multiple" multiple="multiple">
            <option selected="selected">Multiple</option>
            <option>Multiple2</option>
            <option selected="selected">Multiple3</option>
        </select>

        <script>
            function displayVals() {
                var singleValues = $( "#single" ).val();
                var multipleValues = $( "#multiple" ).val() || [];
                $( "p" ).html( "<b>Single:</b> " + singleValues +
                    " <b>Multiple:</b> " + multipleValues.join( ", " ) );
            }
 
            $( "select" ).change( displayVals );
            displayVals();
        </script>

    </body>
</html>
