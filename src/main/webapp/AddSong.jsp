<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add song page</title>

    <style>
        body{
            background: url(images//registerbackground.jpg);
            background-size: cover;
            background-repeat: no-repeat ;
            
        }
        .songadd{
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
            background-color: rgb(20, 250, 123);
        }
        label,h2{
            color: blueviolet;
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

	<form action="addSongs">
    <fieldset class="songadd">
       <center><h2>Add Song</h2></center>

        <table id="signuptable" style="border-spacing: 5px;">
            <tr>
                <th><label for="SongId">Song Id:</label></th>
                <th><input type="text" name="SongId" id="SongId" placeholder="Enter Song Id" required ></th>
            </tr>
            <tr>
                <th><label for="SongTitle">Song Title:</label></th>
                <th><input type="text" name="SongTitle" id="SongTitle" placeholder="Enter Song Title" required ></th>
            </tr>
           
            <tr>
                <th><label for="Artist">Artists:</label></th>
                <th><input type="text" name="Artists" id="Artists" placeholder="Enter Artist Name"  required ></th>
            </tr>
           
                    
           <tr>
                <th><label for="Album">Album:</label></th>
                <th><input type="text" name="Album" id="Album" placeholder="Enter Album Name" required ></th>
            </tr>
            
                                  
            <tr>
                <th><label for="Genre">Genre:</label></th>
                <th><input type="text" name="Genre" id="Genre" placeholder="Enter Genre Name" required ></th>
            </tr>
           
            <tr>
                <th><label for="Language">Language:</label></th>
                <th><input type="text" name="Language" id="Language" placeholder="Enter Language" required ></th>
            </tr>

            
       
        <table id="buttontable">
            <tr>
                <td><button type="submit">Click to Add Song</button></td> 
               
            </tr>
        </table>    
    </fieldset>
    </form>
</body>
</html>