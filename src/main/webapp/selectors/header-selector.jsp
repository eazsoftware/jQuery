<!DOCTYPE html>
<html>
    <head>
        <style>
            body { font-size: 10px; font-family: Arial; }
            h1, h2 { margin: 3px 0; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <h1>Header 1</h1>

        <p>Contents 1</p>
        <h2>Header 2</h2>
        <p>Contents 2</p>
        <script>$(":header").css({ background:'#CCC', color:'blue' });</script>

    </body>
</html>