<!DOCTYPE html>
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>
            <label>
                <input type="radio" name="newsletter" value="Hot Fuzz" />
                <span>name?</span>
            </label>
        </div>
        <div>
            <label>
                <input type="radio" name="newsletter" value="Cold Fusion" />
                <span>value?</span>
            </label>
        </div>
        <div>
            <label>
                <input type="radio" name="newsletter" value="Evil Plans" />
                <span>value?</span>
            </label>
        </div>
        <script>$('input[value="Hot Fuzz"]').next().text(" Hot Fuzz");</script>

    </body>
</html>