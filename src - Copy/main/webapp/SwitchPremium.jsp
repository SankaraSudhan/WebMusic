<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register page</title>

    <style>
        body{
            background: url(https://c4.wallpaperflare.com/wallpaper/677/228/927/piano-musical-instrument-monochrome-dust-wallpaper-preview.jpg);
            background-size: cover;
            background-repeat: no-repeat ;
            
        }
        .signup{
            width: 400px;
            height: 400px;
            margin-left: 380px;
            margin-top: 90px ;
            padding-left: 50px;
           box-shadow: 0 0 2px 2px rgb(187, 186, 186);

        }
        th,td{
           
            padding: 5px;
        }
        #buttontable{
            margin-left: 100px;
            padding-top: 20px;
            
        }
        button{
            height: 25px;
            width: 150px;
            border: none;
            outline: none;
            
        }
        button:hover{
            background-color: rgb(109, 216, 235);
        }
        label,h2,h3{
            color: white;
        }
        #male{
            margin-left: 0%;
            padding: 0 40px   ;
        }
        input{
            outline: none;
        }
    </style>
</head>
<body>

	<form action="switch">
    <fieldset class="signup">
    <br><br>
    <br><br>
       <center><h2>Subscribe here to switch premium!</h2></center>

        <table id="signuptable" style="border-spacing: 5px;">
        <br>
          <center><h3> Pay 150Rs for premium</h3></center>  
        <table id="buttontable">
            <tr>
                <td><button><a href="switch">Subscribe</a></button></td>
                  
            </tr>
        </table>    
    </fieldset>
    </form>
</body>
</html>