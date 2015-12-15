<!--

Author: Ashish Kumar
    @copyright 2014

This is my default homepage profile.

reference : Facebook Api


-->
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset='utf-8' />
    <title>Ashish Kumar</title>

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
    <link href='http://fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/hom.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/newmenu.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/stole.css" type='text/css' media="screen" />
    <link rel="stylesheet" href="css/project.css" type='text/css' media="screen" />
    <!-- Javascript
    ================================================== -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="javascript/sript.js"></script>
     <script src="javascript/newmenu.js"></script>
   
</head>

<body>

    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '113496275684113',
                xfbml: true,
                version: 'v2.5'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
</script>
    

    <!-- Navigation Menu
    ================================================== -->
   <header>
       <div id="cssmenu">
      
        <ul class="clearfix">
            <li><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
            <li><a href="statistics/" target="_blank">Statistics</a></li>
            <li><a href="source/" target="_blank">Source</a></li>
            <li><a href="search/" target="_blank">Search</a></li>
            <li><a href="searchtree/" target="_blank">SearchTree</a></li>
            <li><a href="textview/" target="_blank">TextView</a></li>
            <li><a href="filelist.aspx" target="_blank">FileList</a></li>
            <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
            <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
            <li><a href="blog/" target="_blank">Blog</a></li>
            <li><a href="story/index.htm?../experiments/story.txt" target="_blank">Experiments</a></li>
           

        </ul>
  
           </div>
    </header>
<div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>
    <footer>
        <h4>© Ashish Kumar. All Rights Reserved.</h4>
         
    </footer>
</body>
</html>
