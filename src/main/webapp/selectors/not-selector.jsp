<!DOCTYPE html>
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>
            <input type="checkbox" name="a" />
            <span>Mary</span>
        </div>

        <div>
            <input type="checkbox" name="b" />
            <span>lcm</span>

        </div>
        <div>
            <input type="checkbox" name="c" checked="checked" />

            <span>Peter</span>
        </div>
        <script>
            $("input:not(:checked) + span").css("background-color", "yellow");
            $("input").attr("disabled", "disabled");
 
        </script>

    </body>
</html>