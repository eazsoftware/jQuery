<!DOCTYPE html>
<html>
    <head>
        <style>
            span { color:#008; }
            span.sogreen { color:green; font-weight: bolder; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>
            <span>John,</span>
            <span>Karl,</span>
            <span>Brandon</span>

        </div>
        <div>
            <span>Glen,</span>
            <span>Tane,</span>
            <span>Ralph</span>

        </div>
        <script>
            $("div span:first-child")
            .css("text-decoration", "underline")
            .hover(function () {
                $(this).addClass("sogreen");
            }, function () {
                $(this).removeClass("sogreen");
            });
        </script>

    </body>
</html>