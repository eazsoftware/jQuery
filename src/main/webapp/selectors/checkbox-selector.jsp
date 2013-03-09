<!DOCTYPE html>
<html>
    <head>
        <style>
            textarea { height:25px; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <form>
            <input type="button" value="Input Button"/>
            <input type="checkbox" />

            <input type="checkbox" />
            <input type="file" />
            <input type="hidden" />

            <input type="image" />
            <input type="password" />
            <input type="radio" />

            <input type="reset" />
            <input type="submit" />
            <input type="text" />

            <select><option>Option<option/></select>
            <textarea></textarea>
            <button>Button</button>
        </form>

        <div>
        </div>
        <script>
 
            var input = $("form input:checkbox").wrap('<span></span>').parent().css({background:"yellow", border:"3px red solid"});
            $("div").text("For this type jQuery found " + input.length + ".")
            .css("color", "red");
            $("form").submit(function () { return false; }); // so it won't submit
 
        </script>

    </body>
</html>