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
                <li>Brandon</li>

            </ul>
        </div>
        <div>
            <ul>
                <li>Sam</li>
            </ul>
        </div>
        <div>
            <ul>
                <li>Glen</li>
                <li>Tane</li>
                <li>Ralph</li>
                <li>David</li>
            </ul>
        </div>
        <script>$("ul li:nth-child(2)").append("<span> - 2nd!</span>");</script>

    </body>
</html>