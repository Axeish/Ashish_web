<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset='utf-8' />
    <title>Ashart</title>
    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="css/home.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/mediaQ.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/menu.css" type='text/css' media="screen" />

    <!-- Javascript
    ================================================== -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="javascript/youtube.js"></script>
    <script src="javascript/script.js"></script>

    <style>
        #slideshow img {
            position: relative;
            display: none;
            width: 60%;
            height: 60%;
            margin-top: 15px;
            border: 1px solid white;
            -webkit-box-shadow: 0px 3px 7px 4px black;
            -moz-box-shadow: 0px 3px 7px 4px black;
        }

            #slideshow img.active {
                display: block;
            }
    </style>
</head>

<body>
    <!-- Navigation Menu
    ================================================== -->
    <div id='cssmenu'>
        <ul>
            <li class='active'><a href='default.aspx'>Home</a></li>
            <li><a href='Artist.aspx'>Artists</a></li>
            <li><a href='About.aspx'>About</a></li>
            <li><a href='MyWork.aspx'>MyWork</a></li>
            <li><a href='../default.aspx'>Profile</a></li>
            <li><a href="../story/index.htm?../project/project-story.txt">Document</a></li>
        </ul>
    </div>

    <!-- LOGO
    ================================================== -->
    <div id="lo">
        <img src="images/base1.png" id="gol1" />
        <img class="rotate" src="images/ring.png" id="gol" />
    </div>
    <div id="buttons">
      <label> <input id="query" value='cats' type="text"/><button id="search-button" disabled onclick="search()">Search</button></label>
    </div>
    <div id="search-container">
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
   <!-- <script src="auth.js"></script> -->
    <script src="javascript/youtube.js"></script>
    

    <!-- Footer
    ================================================== -->
    <div class="footer">
        <h4>© Ashish Kumar. All Rights Reserved.</h4>
    </div>
</body>
</html>
