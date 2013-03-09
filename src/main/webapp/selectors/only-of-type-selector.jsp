<!DOCTYPE html>
<html>
    <head>
        <style>
            div { width:100px; height:80px; margin:5px; float:left; background:#b9e; }
            span { padding: 2px; margin: 3px; line-height: 1.4; border: 1px solid #000; }
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
            <span>Sibling!</span>
            <span>Sibling!</span>

        </div>
        <div>
            <button>Sibling!</button>
        </div>
        <script>
            $("button:only-of-type").text("Alone").css("border", "2px blue solid");
        </script>

    </body>
</html>