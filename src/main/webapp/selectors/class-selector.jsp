<!DOCTYPE html>
<html>
    <head>
        <style>
            div,span {
                width: 100px;
                height: 40px;
                float:left;
                padding: 10px;
                margin: 10px;
                background-color: #EEEEEE;
            }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div class="notMe">div class="notMe"</div>
        <div class="myClass">div class="myClass"</div>
        <span class="myClass">span class="myClass"</span>
        <script>$(".myClass").css("border","3px solid red");</script>


        <div class="myclass">div class="notMe"</div>
        <div class="myclass otherclass">div class="myClass"</div>
        <span class="myclass otherclass">span class="myClass"</span>
        <script>$(".myclass.otherclass").css("border","13px solid red");</script>

    </body>
</html>