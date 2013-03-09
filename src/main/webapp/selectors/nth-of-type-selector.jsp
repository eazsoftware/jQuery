	
<!DOCTYPE html>
<html>
    <head>
        <style>
            .nth { color: red; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>
            <span>John</span>,
            <b>Kim</b>,
            <span>Adam</span>,
            <b>Rafael</b>,
            <span>Oleg</span>
        </div>
        <div>
            <b>Dave</b>,
            <span>Ann</span>
        </div>
        <div>
            <i><span>Maurice</span></i>,
            <span>Richard</span>,
            <span>Ralph</span>,
            <span>Jason</span>
        </div>
        <script>
            $( "span:nth-of-type(2)" )
            .append( "<span> is 2nd sibling span</span>" )
            .addClass( "nth" );
        </script>

    </body>
</html>