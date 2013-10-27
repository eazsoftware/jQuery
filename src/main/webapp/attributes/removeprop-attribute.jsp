<%-- 
    Document   : removeprop-attribute
    Created on : 26-Oct-2013, 14:10:35
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>removeProp demo</title>
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

        <p></p>

        <script>
            $( "p" )
            .prop( "luggageCode", 1234 )
            .append( "The secret luggage code is: ", "Secrete place", ". " )
            .removeProp( "luggageCode" )
            .append( "Now the secret luggage code is: ", "007", ". " );
        </script>

    </body>
</html>
