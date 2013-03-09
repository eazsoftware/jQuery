<!DOCTYPE html>
<html>
    <head>
        <style>
            textarea { height:35px; }
            div { color: red; }
            fieldset { margin: 0; padding: 0; border-width: 0; }
            .marked { background-color: yellow; border: 3px red solid; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <form>
            <fieldset>
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
                <select><option>Option<option/></select>

                <textarea></textarea>
                <button>Button</button>
            </fieldset>
        </form>

        <div>
        </div>
        <script>
            var input = $(":button").addClass("marked");
            $("div").text( "For this type jQuery found " + input.length + "." );
            $("form").submit(function () { return false; }); // so it won't submit
        </script>

    </body>
</html>