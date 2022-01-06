<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register page</title>

    <style>
        body{
            background: url(https://c4.wallpaperflare.com/wallpaper/331/308/999/headphones-music-minimalism-wallpaper-preview.jpg);
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
            background-color: rgb(250, 196, 20);
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

	<form action="addOnUser">
    <fieldset class="signup">
       <center><h2>Add On User to share Premium account</h2></center>

        <table id="signuptable" style="border-spacing: 5px;">
          <table id="signuptable" style="border-spacing: 5px;">
          <center><h3>Enter present user email here</h3></center>  
          <tr>
                <th><label for="emailId">Email Id:</label></th>
                <th><input type="email" name="UserEmail" id="emailId" placeholder="Enter email Id"  required ></th>
            </tr>
        
         
        <table id="buttontable">
            <tr>
                <td><button>Click to Add</button></td>
                  
            </tr>
        </table>    
    </fieldset>
    </form>
</body>
</html>