<%-- 
    Document   : prop-attribute
    Created on : 26-Oct-2013, 14:09:54
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>prop demo</title>
        <style>
            img {
                padding: 10px;
            }
            div {
                color: red;
                font-size: 24px;
            }
        </style>
        <jsp:include page="../header.jsp" />
    </head>
    <body>

        <input type="checkbox" checked="checked">
        <input type="checkbox">
        <input type="checkbox">
        <input type="checkbox" checked="checked">

        <script>
            $( "input[type='checkbox']" ).prop({
                disabled: true
            });
        </script>

    </body>
</html>