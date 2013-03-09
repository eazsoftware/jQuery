
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
<!DOCTYPE html>
<html>
    <head>
        <style>
            div {
                width: 90px;
                height: 90px;
                float:left;
                padding: 5px;
                margin: 5px;
                background-color: #EEEEEE;
            }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <div id="notMe"><p>id="notMe"</p></div>

        <div id="myDiv">id="myDiv"</div>
        <script>$("#myDiv").css("border","3px solid red");</script>

    </body>
</html>