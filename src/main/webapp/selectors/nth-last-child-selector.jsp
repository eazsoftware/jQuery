<!DOCTYPE html>
<html>
    <head>
        <style>
            div { float:left; }
            span { color:blue; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>
            <ul>
                <li>John</li>
                <li>Karl</li>
                <li>Adam</li>
            </ul>
        </div>
        <div>
            <ul>
                <li>Dan</li>
            </ul>
        </div>
        <div>
            <ul>
                <li>Dave</li>
                <li>Rick</li>
                <li>Timmy</li>
                <li>Gibson</li>
            </ul>
        </div>
        <script>$("ul li:nth-last-child(2)").append("<span> - 2nd to last!</span>");</script>

    </body>
</html>