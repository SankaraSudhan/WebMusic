<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wallet recharge page</title>

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
            background-color: rgb(109, 216, 235);
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

	<form action="recharge">
    <fieldset class="signup">
       <center><h2>Recharge Wallet here!</h2></center>

        <table id="signuptable" style="border-spacing: 5px;">
        
          <tr>
                <th><label for="emailId">Email Id:</label></th>
                <th><input type="email" name="UserEmail" id="emailId" placeholder="Enter email Id"  required ></th>
            </tr>
           
       
            <tr>
                <th><label for="CardNumber">Card Number:</label></th>
                <th><input type="number" name="AccountNumber" id="AccountNumber" placeholder="Enter card number" pattern ="[0-9]{15}" required autofocus ></th>
            </tr>
           
                    
           <tr>
                <th><label for="cvv">CVV:</label></th>
                <th><input type="number" name="cvv" id="cvv" placeholder="Enter CVV" pattern ="[0-9]{3}" required ></th>
            </tr>
            
               <tr>
                <th><label for="mobile">Mobile Number:</label></th>
                <th><input type="number" name="MobileNumber" id="mobile" placeholder="Enter mobile number" pattern ="[0-9]{10}" required></th>
            </tr>                     
            
            <tr>
                <th><label for="Amount">Amount:</label></th>
                <th><input type="number" min="0" name="Amount" id="amount" placeholder="Enter Amount" pattern ="[0-9]{10}" required ></th>
                
        </table>
       
        <table id="buttontable">
            <tr>
                <td><button type="submit">Recharge Wallet</button></td>
                  
            </tr>
        </table>    
    </fieldset>
    </form>
</body>
</html>