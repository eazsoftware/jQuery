	
<!DOCTYPE html>
<html>
    <head>
        <style>
            div { color:red; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <select name="garden" multiple="multiple">

            <option>Flowers</option>
            <option selected="selected">Shrubs</option>
            <option>Trees</option>
            <option selected="selected">Bushes</option>

            <option>Grass</option>
            <option>Dirt</option>
        </select>
        <div></div>
        <script>
            $("select").change(function () {
                var str = "";
                $("select option:selected").each(function () {
                    str += $(this).text() + " ";
                });
                $("div").text(str);
            })
            .trigger('change');
        </script>

    </body>
</html>