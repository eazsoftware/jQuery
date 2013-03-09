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
            <span>Corey,</span>
            <span>Yehuda,</span>
            <span>Adam,</span>
            <span>Todd</span>
        </div>
        <div>
            <span>J�rn,</span>
            <span>Scott,</span>
            <span>Timo,</span>
            <b>Nobody</b>
        </div>
        <script>
            $("span:last-of-type")
            .css({color:"red", fontSize:"80%"})
            .hover(function () {
                $(this).addClass("solast");
            }, function () {
                $(this).removeClass("solast");
            });
        </script>

    </body>
</html>