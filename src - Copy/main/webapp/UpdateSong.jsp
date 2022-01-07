<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register page</title>

    <style>
        body{
            background: url(https://c1.wallpaperflare.com/preview/162/780/874/cassette-recording-sound-audio.jpg);
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
        label,h2{
            color: black;
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

	<form action="UpdateSong">
    <fieldset class="signup">
       <center><h2>Update Song details here!</h2></center>

        <table id="signuptable" style="border-spacing: 5px;">
            <tr>
                <th><label for="id">Song Id:</label></th>
                <th><input type="number" name="song_id" id="id" placeholder="Enter song id" required autofocus></th>
            </tr>
            <tr>
                <th><label for="title">Song Title:</label></th>
                <th><input type="text" name="song_title" id="title" placeholder="Enter song title" required autofocus></th>
            </tr>
           
            <tr>
                <th><label for="artist">Artists:</label></th>
                <th><input type="text" name="artists" id="artist" placeholder="Enter artist"  required ></th>
            </tr>
           
                    
           <tr>
                <th><label for="album">Album:</label></th>
                <th><input type="text" name="album" id=""album"" placeholder="Enter album" required ></th>
            </tr>
            
                                  
            <tr>
                <th><label for="genre">Genre:</label></th>
                <th><input type="text" name="genre" id="genre" placeholder="Enter genre" required ></th>
            </tr>
           
            <tr>
                <th><label for="language">Language:</label></th>
                <th><input type="text" name="language" id="language" placeholder="Enter language" required></th>
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
                <td><button type="submit">Click to Update Details</button></td>
                  
            </tr>
        </table>    
    </fieldset>
    </form>
</body>
</html>