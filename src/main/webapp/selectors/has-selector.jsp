<!DOCTYPE html>
<html>
    <head>
        <style>
            .test{ border: 3px inset red; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div><p>Hello in a paragraph</p></div>

        <div>Hello again! (with no paragraph)</div>
        <script>$("div:has(p)").addClass("test");</script>

    </body>
</html>