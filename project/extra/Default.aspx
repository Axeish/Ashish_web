<%@ Page Language="C#" %>

<script runat="server">
    <%-- This demo page has no server side script --%>
</script>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset='utf-8' />

    <title>Hardik Surana Home Page</title>
    <link type="text/css" rel="stylesheet" href="css/custom.css">

    <link href="images/favicon.ico" rel="icon" type="image/x-icon" />
</head>

<body>

    <div class="pad">

        <form id="form1" runat="server">

            <div>

                <ul class="master_navigation">
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

                <hr />
                <div>
                    <p>
                        <img src="images/profile.JPG" alt="Profile Picture" class="display_pic" />
                        Hi my name is Hardik Surana. 
                        I am a MS in CS student at College of Computer Science at Northeaster University.
                        For my first semester I'm enrolled in CS 5610 - Web Developmet Class.
                    </p>


                    <hr />
                    <p>
                        To access the experiments please click on the link in the top menu.
                        Or click on the the icons below.
                    </p>
                    <p>
                        This site is still under construction.
                    </p>

                    <hr />

                    <figure>
                        <a href="story/index.htm?../experiments/story.txt" target="_blank">
                            <img src="images/experiments.png" alt="Experiments" class="icon" /></a>
                        <figcaption>Experiments</figcaption>
                    </figure>
                    <figure>
                        <a href="project/index.html" target="_blank">
                            <img src="images/project.png" class="icon" /></a>
                        <figcaption>Project</figcaption>
                    </figure>

                </div>
            </div>

        </form>

    </div>
    <div id="footer">
        <hr />
        <div id="copyright">
            Copyright © 2015. All rights reserved with Hardik Surana.
        </div>
        <div id="social">
            <a href="https://www.facebook.com/hardiksurana" target="_blank">
                <img src="images/facebook.png" alt="Facebook" class="footer_icon" /></a>
            <a href="https://plus.google.com/u/0/" target="_blank">
                <img src="images/google.png" alt="google" class="footer_icon" /></a>
        </div>

    </div>


</body>
</html>
