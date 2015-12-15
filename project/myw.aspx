<script runat="server">   
</script>
<!DOCTYPE html>
<html lang="en">

<head style="backround Image: MyWork/BG.jpg"">
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
    <script type="text/javascript" src="javascript/slideshow.js"></script>
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
	<!--Table---->
	<table>
		<tr>
			<td>Mehfil</td>
			<td>Paintings</td>		
		</tr>
		<tr>
			<td>Photoshop</td>
			<td>paper Art</td>		
		</tr>
	<table>
	<table>
    <!-- Slideshow
    ================================================== -->
    <div id="slideshow" align="center">
        <img src="images/slide/1.jpg" />
        <img src="images/slide/2.jpg" />
        <img src="images/slide/3.jpg" />
        <img src="images/slide/4.jpg" />

        <img src="images/slide/6.jpg" />
        <img src="images/slide/7.jpg" />
        <img src="images/slide/8.jpg" />
        <img src="images/slide/9.jpg" />
        <img src="images/slide/10.jpg" />
        <img src="images/slide/11.jpg" />
        <img src="images/slide/12.jpg" />
        <img src="images/slide/14.jpg" />
        <img src="images/slide/15.jpg" />
        <img src="images/slide/16.jpg" />
        <img src="images/slide/17.jpg" />
        <img src="images/slide/18.jpg" />
    </div>

    <!-- Footer
    ================================================== -->
    <div class="footer">
        <h6>© Ashish Kumar. All Rights Reserved.</h6>
    </div>
</body>
</html>
