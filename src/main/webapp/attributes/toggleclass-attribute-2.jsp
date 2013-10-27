<%-- 
    Document   : toggleclass-attribute
    Created on : 26-Oct-2013, 14:10:59
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>toggleClass demo</title>
        <style>
            p {
                margin: 4px;
                font-size: 16px;
                font-weight: bolder;
                cursor: pointer;
            }
            .blue {
                color: blue;
            }
            .highlight {
                background: red;
            }
        </style>
        <jsp:include page="../header.jsp" />
    </head>
    <body>

        <p class="blue">Click to toggle (<span>clicks: 0</span>)</p>
        <p class="blue highlight">highlight (<span>clicks: 0</span>)</p>
        <p class="blue">on these (<span>clicks: 0</span>)</p>
        <p class="blue">paragraphs (<span>clicks: 0</span>)</p>

        <script>
            var count = 0;
            $( "p" ).each(function() {
                var $thisParagraph = $( this );
                var count = 0;
                $thisParagraph.click(function() {
                    count++;
                    $thisParagraph.find( "span" ).text( "clicks: " + count );
                    $thisParagraph.toggleClass( "highlight", count % 3 === 0 );
                });
            });
        </script>

    </body>
</html>