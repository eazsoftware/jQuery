<!DOCTYPE html>
<html>
    <head>
        <style>
            a { display: inline-block; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <p>
            Description: Selects elements that have the specified attribute with a value either equal to a given string or starting with that string followed by a hyphen (-).    
        </p>
        <a href="../index.html" hreflang="en">Some text</a> 

        <a href="../index.html" hreflang="en-UK">Some other text</a>

        <a href="../index.html" hreflang="english">will not be outlined</a>

        <script>
            $('a[hreflang|="en"]').css('border','3px dotted green');
        </script>

    </body>
</html>