<!DOCTYPE html>
<html>
    <head>
        <style>
            span.solast { text-decoration:line-through; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>
            <span>John,</span>
            <span>Karl,</span>
            <span>Brandon,</span>
            <span>Sam</span>
        </div>
        <div>
            <span>Glen,</span>
            <span>Tane,</span>
            <span>Ralph,</span>
            <span>David</span>
        </div>
        <script>
            $("div span:last-child")
            .css({color:"red", fontSize:"80%"})
            .hover(function () {
                $(this).addClass("solast");
            }, function () {
                $(this).removeClass("solast");
            });
        </script>

    </body>
</html>