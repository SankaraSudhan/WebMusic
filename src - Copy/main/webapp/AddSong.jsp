<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add song page</title>

    <style>
        body{
            background: url(https://wallpapercave.com/dwp1x/wp1836729.jpg);
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

	<form action="addSongs">
    <fieldset class="songadd">
       <center><h2>Add Song</h2></center>

        <table id="signuptable" style="border-spacing: 5px;">
            <tr>
                <th><label for="SongId">Song Id:</label></th>
                <th><input type="text" name="SongId" id="SongId" placeholder="Enter Song Id" pattern ="[0-9]+{3}"required ></th>
            </tr>
            <tr>
                <th><label for="SongTitle">Song Title:</label></th>
                <th><input type="text" name="SongTitle" id="SongTitle" placeholder="Enter Song Title" pattern = "[a-zA-Z]+{3,30}" required ></th>
            </tr>
           
            <tr>
                <th><label for="Artist">Artists:</label></th>
                <th><input type="text" name="Artists" id="Artists" placeholder="Enter Artist Name" pattern = "[a-zA-Z]+{3,30}" required ></th>
            </tr>
           
                    
           <tr>
                <th><label for="Album">Album:</label></th>
                <th><input type="text" name="Album" id="Album" placeholder="Enter Album Name" pattern = "[a-zA-Z]+{3,30}" required ></th>
            </tr>
            
                                  
            <tr>
                <th><label for="Genre">Genre:</label></th>
                <th><input type="text" name="Genre" id="Genre" placeholder="Enter Genre Name" pattern = "[a-zA-Z]+{3,30}"required ></th>
            </tr>
           
            <tr>
                <th><label for="Language">Language:</label></th>
                <th><input type="text" name="Language" id="Language" placeholder="Enter Language" pattern = "[a-zA-Z]+{3,30}" required ></th>
            </tr>

             <tr>
                <th><label for="importSong">Add song to database:</label></th>
                <th><input type="file" name="addSong" id="importSong"  required></th>
            </tr>     
              <tr>
                <th><label for="imageSong">Add song to database:</label></th>
                <th><input type="file" name="imgSong" id="imageSong"  required></th>
            </tr>         
       </table>
        <table id="buttontable">
            <tr>
                <td><button type="submit">Click to Add Song</button></td> 
               
            </tr>
        </table>    
    </fieldset>
    </form>
</body>
</html>