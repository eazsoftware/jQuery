<!DOCTYPE html>
<html>
    <head>
        <style>
            body { font-size:14px; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>

        <ul class="topnav">
            <li>Item 1</li>
            <li>Item 2
                <ul><li>Nested item 1</li><li>Nested item 2</li><li>Nested item 3</li></ul>
            </li>
            <li>Item 3</li>
        </ul>

        <script>$("ul.topnav > li").css("border", "3px double red");</script>

    </body>
</html>