<!DOCTYPE html>
<html>
    <head>
        <style>
            body { background-color: #ccc; }
            h3 { margin: .25em 0; }
            div { line-height: 1.5em}
            .usa { background-color: #f00; color: #fff; }
            .usa .usa { background-color: #fff; color: #000; }
            .usa .usa .usa { background-color: #00f; color: #fff; }

            .spain { background-color: #f00; color: #ff0; }
            .spain .spain { background-color: #ff0; color: #f00; line-height: 3em; }
            .spain .spain .spain { background-color: #f00; color: #ff0; line-height: 1.5em; }
        </style>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>

        <h3>USA</h3>
        <div lang="en-us">red
            <div>white
                <div>and blue</div>
            </div>
        </div>
        <h3>Espa�a</h3>
        <div lang="es-es">rojo
            <div>amarillo
                <div>y rojo</div>
            </div>
        </div>

        <script>
            $( "div:lang(en-us)" ).addClass( "usa" );
            $( "div:lang(es-es)" ).addClass( "spain" );
        </script>

    </body>
</html>