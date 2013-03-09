<!DOCTYPE html>
<html>
    <head>
        <style>
            div { width:100px; height:80px; margin:5px; float:left; background:#b9e }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>
            <button>Sibling!</button>
            <button>Sibling!</button>
        </div>

        <div>
            <button>Sibling!</button>
        </div>
        <div>
            None
        </div>

        <div>
            <button>Sibling!</button>
            <button>Sibling!</button>
            <button>Sibling!</button>

        </div>
        <div>
            <button>Sibling!</button>
        </div>
        <script>
            $("div button:only-child").text("Alone").css("border", "2px blue solid");
        </script>

    </body>
</html>