<!DOCTYPE html>
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <form>

            <input name="email" disabled="disabled" />
            <input name="id" />
        </form>
        <script>$("input:disabled").val("this is it");</script>

    </body>
</html>
