<!DOCTYPE html>
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        Description: Selects all next elements matching "input" that are immediately preceded by a sibling "label".
        <form>

            <label>Name:</label>
            <input name="name" />
            <fieldset>
                <label>Newsletter:</label>

                <input name="newsletter" />
            </fieldset>
        </form>
        <input name="none" />
        <script>$("label + input").css("color", "blue").val("Labeled!")</script>

    </body>
</html>