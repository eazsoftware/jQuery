<!DOCTYPE html>
<html>
    <head>
        <style>

            body { font-size:14px; }
            form { border:2px green solid; padding:2px; margin:0;
                   background:#efe; }
            div { color:red; }
            fieldset { margin:1px; padding:3px; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <form>
            <div>Form is surrounded by the green outline</div>
            <label>Child:</label>
            <input name="name" />

            <fieldset>
                <label>Grandchild:</label>
                <input name="newsletter" />
            </fieldset>

        </form>
        Sibling to form: <input name="none" />
        <script>$("form input").css("border", "2px dotted blue");</script>

    </body>
</html>