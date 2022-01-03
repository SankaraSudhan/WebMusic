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
        .playlistadd{
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

	<form action="addPlaylist">
    <fieldset class="playlistadd">
       <center><h2>Add Playlist</h2></center>

        <table id="signuptable" style="border-spacing: 5px;">
            <tr>
                <th><label for="SongTitle">Song Title:</label></th>
                <th><input type="text" name="SongTitle" id="SongTitle" placeholder="Enter Song Id" required ></th>
            </tr>
           <!---
            <tr>
                <th><label for="PlaylistId">Playlist Id:</label></th>
                <th><input type="text" name="PlaylistId" id="PlaylistId" placeholder="Enter Playlist Id" required ></th>
            </tr>
           
               -->      
            <tr>
                <th><label for="PlaylistTitle">Playlist Title:</label></th>
                <th><input type="text" name="PlaylistTitle" id="PlaylistTitle" placeholder="Enter Song Title" required ></th>
            </tr>
           
           <!-- <tr>
                <th><label for="EmailId">Email Id:</label></th>
                <th><input type="email" name="EmailId" id="EmailId" placeholder="Enter Email Id"  required ></th>
            </tr>
           -->
            
       
        <table id="buttontable">
            <tr>
                <td><button type="submit">Click to Add Playlist</button></td> 
               
            </tr>
        </table>    
    </fieldset>
    </form>
</body>
</html>