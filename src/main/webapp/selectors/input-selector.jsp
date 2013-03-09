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

            <input type="file" />
            <input type="hidden" />
            <input type="image" />

            <input type="password" />
            <input type="radio" />
            <input type="reset" />

            <input type="submit" />
            <input type="text" />
            <select><option>Option</option></select>

            <textarea></textarea>
            <button>Button</button>
        </form>
        <div id="messages">
        </div>
        <script>
            var allInputs = $(":input");
            var formChildren = $("form > *");
            $("#messages").text("Found " + allInputs.length + " inputs and the form has " +
                formChildren.length + " children.");
 
            // so it won't submit
            $("form").submit(function () { return false; });
 
        </script>

    </body>
</html>