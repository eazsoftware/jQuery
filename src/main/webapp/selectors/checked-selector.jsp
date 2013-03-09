<!DOCTYPE html>
<html>
    <head>
        <style>
            div { color:red; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>

        <form>
            <p>
                <input type="checkbox" name="newsletter" value="Hourly" checked="checked">

                <input type="checkbox" name="newsletter" value="Daily">
                <input type="checkbox" name="newsletter" value="Weekly">

                <input type="checkbox" name="newsletter" value="Monthly" checked>
                <input type="checkbox" name="newsletter" value="Yearly">
            </p>
        </form>
        <div></div>

        <script>
            var countChecked = function() {
                var n = $( "input:checked" ).length;
                $( "div" ).text( n + (n === 1 ? " is" : " are") + " checked!" );
            };
            countChecked();
 
            $( "input[type=checkbox]" ).on( "click", countChecked );
        </script>

    </body>
</html>