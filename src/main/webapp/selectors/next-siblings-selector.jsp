	
<!DOCTYPE html>
<html>
    <head>
        <style>

            div,span {
                display:block;
                width:80px;
                height:80px;
                margin:5px;
                background:#bbffaa;
                float:left;
                font-size:14px;
            }
            div#small {
                width:60px;
                height:25px;
                font-size:12px;
                background:#fab;
            }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        Finds all divs that are siblings after the element with #prev as its id. Notice the span isn't selected since it is not a div and the "niece" isn't selected since it is a child of a sibling, not an actual sibling.        
        The notable difference between (prev + next) and (prev ~ siblings) is their respective reach. While the former reaches only to the immediately following sibling element, the latter extends that reach to all following sibling elements.        
        
        <div>div (doesn't match since before #prev)</div>
        <span id="prev">span#prev</span>
        <div>div sibling</div>

        <div>div sibling <div id="small">div niece</div></div>
        <span>span sibling (not div)</span>
        <div>div sibling</div>
        <script>$("#prev ~ div").css("border", "3px groove blue");</script>

    </body>
</html>