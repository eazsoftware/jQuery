<!DOCTYPE html>
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>

            <input type="radio" name="newsletter" value="Hot Fuzz" />
            <span>name is newsletter</span>

        </div>
        <div>
            <input type="radio" value="Cold Fusion" />
            <span>no name</span>

        </div>
        <div>
            <input type="radio" name="accept" value="Evil Plans" />

            <span>name is accept</span>
        </div>
        <script>$('input[name!="newsletter"]').next().append('<b>; not newsletter</b>');</script>

    </body>
</html>