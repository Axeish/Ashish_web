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
    <link rel="stylesheet" href="css/mediaQ.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/menu.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/grid.css" type='text/css' media="screen" />

    <!-- Javascript
    ================================================== -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.pack.js"></script>
    <script type="text/javascript" src="javascript/slideshow.js"></script>
    <script src="javascript/script.js"></script>
    <script src="javascript/grid.js"></script>
    <!-- http://codepen.io/massiebn/pen/Ibsdn -->


    <style>
        #slideshow img {
            position: relative;
            display: none;
            width: 40%;
            height: 50%;
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
   
    </div>
    <hr />
     <div class="about" align="center">
        
    <h3 class="text1">
        This page is about my journey of art that has began very early in my life but I realized it very recently. This journey is about exploring various art and environment surrounding art artist I come across, and of course myself !!
This page is a glimpse of my journey so far. Its about what I like, what I am interested in learning passionately, what I have learned so far from various source. And I will definitely keep updating this page . This page will grow as I grow ...

    </h3></div>
    <hr />
    <div class="wrap-thin demo-thin">
      <div class="viewport"> <a href="https://www.facebook.com/media/set/?set=a.496068287096560.1073741825.425060187530704&type=3" target="_blank"> 
          <span class="dark-background">Maharaja oh Mehfil <em>Mehfil illustration by Ashish Kumar <br />click to see more</em></span> <img src="images/portfolio/m1 (1).jpg" alt="Mehfil" /> </a> </div>
      <div class="viewport no-margin"> <a href="https://www.facebook.com/media/set/?set=a.634182316618489.1073741829.425060187530704&type=3" target="_blank"> 
          <span class="dark-background">Quill Sunflower Set<em>Paper Craft by Ashish Kumar<br />click to see more</em></span> <img src="images/portfolio/q (12).jpg" alt="Craft" /> </a> </div>
      <div class="viewport"> <a href="https://www.facebook.com/media/set/?set=a.427532937283429.84766.425060187530704&type=3" target="_blank"> 
          <span class="dark-background">Amidst Forest <em>Water Color Painting by Ashish Kumar<br />click to see more</em></span> <img src="images/portfolio/l.jpg" alt="Paint" /> </a> </div>
      <div class="viewport no-margin"> <a href="https://www.facebook.com/media/set/?set=a.425092454194144.84071.425060187530704&type=3" target="_blank"> 
          <span class="dark-background">Angelia Jolie Portrait <em>Portrait By Ashish Kumar<br />click to see more</em></span> <img src="images/portfolio/sk.jpg" alt="Sketch" /> </a> </div>
</div>  
    
    
      <!-- Footer
    ================================================== -->
    <div class="footer">
        <h4>© Ashish Kumar. All Rights Reserved.</h4>
    </div>
</body>
</html>


