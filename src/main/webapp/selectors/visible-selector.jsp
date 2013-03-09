<!DOCTYPE html>
<html>
    <head>
        <style>
            div { width:50px; height:40px; margin:5px; border:3px outset green; float:left; }
            .starthidden { display:none; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <button>Show hidden to see they don't change</button>
        <div></div>
        <div class="starthidden"></div>
        <div></div>

        <div></div>
        <div style="display:none;"></div>
        <script>
            $("div:visible").click(function () {
                $(this).css("background", "yellow");
            });
            $("button").click(function () {
                $("div:hidden").show("fast");
            });
 
        </script>

    </body>
</html>