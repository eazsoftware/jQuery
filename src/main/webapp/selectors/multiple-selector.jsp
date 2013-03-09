<!DOCTYPE html>
<html>
    <head>
        <style>

            div,span,p {
                width: 126px;
                height: 60px;
                float:left;
                padding: 3px;
                margin: 2px;
                background-color: #EEEEEE;
                font-size:14px;
            }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div>div</div>

        <p class="myClass">p class="myClass"</p>
        <p class="notMyClass">p class="notMyClass"</p>
        <span>span</span>
        <script>$("div,span,p.myClass").css("border","3px solid red");</script>

    </body>
</html>