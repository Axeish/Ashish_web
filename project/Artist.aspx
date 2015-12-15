<script runat="server">   
</script>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset='utf-8' />
    <title>Ashart</title>
    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="css/home.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/menu.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/dd.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/artist.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/mediaQ.css" type='text/css' media="screen" />

    <!-- Javascript
    ================================================== -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="javascript/search2.js"></script>
    <script src="javascript/script.js"></script>
    <script>$(document).ready(function () {

    $("#dropdown").click(function () {
        $(".menu").toggleClass("showMenu");
        $(".menu > li").click(function () {
            $("#dropdown > p").html($(this).html());
            $(".menu").removeClass("showMenu");
        });
    });

});</script>

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
    <!-- Logo
    ================================================== -->
    <!--   <div id="lo">
        <img src="images/base1.png" id="gol1" />
        <img class="rotate" src="images/ring.png" id="gol" />
    </div>
    -->
    <!-- Dropdown and Button
    ================================================== -->
    <div id="dropholder">
        <p class="pi">Select</p>
        <div id="dropdown">
            <p class="pi"><i class="fa-foursquare"></i>Click for Artist</p>
        </div>
        <ul id="artistid1" name="one" class="menu">
            <li id="4d8b92684eb68a1b2c00009e">Leonardo Da Vinci</li>
            <li id="4d8b928b4eb68a1b2c0001f2">Pablo Picasso</li>
            <li id="4d8b929e4eb68a1b2c0002f0">Johannes Vermeer</li>
            <li id="4d8b92944eb68a1b2c000264">Vincent Van Gogh</li>
            <li id="4d8b92834eb68a1b2c00019e">Michelangelo</li>
            <li id="4d8b92774eb68a1b2c000134">Claude Monet</li>
            <li id="4d8b92aa4eb68a1b2c000378">Edward Munch</li>
            <li id="4eb19570085cf50001001098">Paolo Caliari</li>
            <li id="4d8b92884eb68a1b2c0001d4">Titian</li>
            <li id="4edfe7b17cb5c400010000eb">Raphael</li>
            <li id="4d8b92b84eb68a1b2c000424">Diego Velazquez</li>
            <li id="4eaeec71bddaf7000100681b">Alessandro Filipepi</li>

        </ul>
    </div>



    <!-- Div to fetch profile
    ================================================== -->
    <div id="ArtistProfile" class="contents" align="center"></div>


    <br />
    <hr />
    <!-- Div to fetch Artworks of artists
    ================================================== -->
    <div id="gal1" class="contents" align="center">
        <br />
    </div>

    </div>

    <!-- Footer
    ================================================== -->
    <div class="footer">
        <h4>© Ashish Kumar. All Rights Reserved.</h4>
    </div>
</body>
</html>
