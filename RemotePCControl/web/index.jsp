<!DOCTYPE html>
<!-- saved from url=(0042)http://getbootstrap.com/examples/carousel/ -->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="http://getbootstrap.com/favicon.ico">

        <title>Remote PC Meet</title>

        <!-- Bootstrap core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="js/ie-emulation-modes-warning.js"></script>

        <!-- Custom styles -->
        <link href="css/carousel.css" rel="stylesheet">
    </head>

    <!-- NAVBAR
    ================================================== -->
    <body>
        <div class="navbar-wrapper">
            <div class="container">

                <nav class="navbar navbar-inverse navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="index.jsp">Remote PC Meet</a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="index.jsp">Home</a></li>
                                <li><a href="About.jsp">About</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

            </div>
        </div>


        <!-- Carousel
        ================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide" src="images/second.png">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1 class="">Control Remote PC</h1>
                            <p class="">Control Remote PC through any device that supports web browser</p>
                            <p><a class="btn btn-lg btn-primary" href="register.jsp" role="button">Sign up today</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide" src="images/first.jpg">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1 class="text-danger">Modes Based On Internet Speed</h1>
                            <p class="text-danger">Different modes can be opted based on your internet speed and requirement</p>
                            <p><a class="btn btn-lg btn-primary" href="#dosmainpage" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide" src="images/services.jpg">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1 class="">Host Your PC To Provide Control Services</h1>
                            <p class="">Just host your pc and provide services that can be a remote conference or a remote pc meet or online classes and many more</p>
                            <p><a class="btn btn-lg btn-primary" href="login.jsp" role="button">Login Now</a></p>
                        </div>
                    </div>
                </div>
            </div>
            
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->


        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="images/dos.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2 class="text-primary">DOS</h2>
                    <p>Control remote pc through command prompt</p>
                    <p><a class="btn btn-success" href="#dosmainpage" role="button">View details »</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="images/monitor2.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2 class="text-success">Monitor</h2>
                    <p>View the remote pc screen</p>
                    <p><a class="btn btn-info" href="#monitormainpage" role="button">View details »</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="images/control3.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2 class="text-danger">Control</h2>
                    <p>Full control over remote pc</p>
                    <p><a class="btn btn-warning" href="#controlmainpage" role="button">View details »</a></p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->


            <!-- START THE FEATURETTES -->

            <hr class="featurette-divider">

            <div class="row featurette" id="dosmainpage">
                <div class="col-md-7">
                    <h2 class="featurette-heading text-danger">DOS Mode <span class=" text-primary">Control through commands</span></h2>
                    <p class="lead">In this mode we will get control of remote pc through command prompt of remote pc. Through this we can execute all commands i.e batch commands on remote pc which we have connected previously</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive center-block"  alt="500x500" src="images/dos2.jpg" data-holder-rendered="true">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette" id="monitormainpage">
                <div class="col-md-7 col-md-push-5">
                    <h2 class="featurette-heading text-danger">MONITOR Mode <span class=" text-primary">View what systems are doing</span></h2>
                    <p class="lead">In this mode we can view the remote pc screen. We can view multiple remote pc's screens at a time which we have connected previously</p>
                </div>
                <div class="col-md-5 col-md-pull-7">
                    <img class="featurette-image img-responsive center-block"  alt="500x500" src="images/monitor.jpg" data-holder-rendered="true">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette" id="controlmainpage">
                <div class="col-md-7">
                    <h2 class="featurette-heading text-danger">CONTROL Mode <span class=" text-primary">Control the systems</span></h2>
                    <p class="lead">In this mode we can get full control of remote pc. This is through accessing remote pc's keyboard and mouse control. And we can see the pc screen while we are controlling</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive center-block"  alt="500x500" src="images/control.jpg" data-holder-rendered="true">
                </div>
            </div>

            <hr class="featurette-divider">

            <!-- /END THE FEATURETTES -->


            <!-- FOOTER -->
            <footer>
                <p class="pull-right"><a href="#myCarousel">Back to top</a></p>
                <p>© 2016 Our Team Project · <a href="privacy.jsp">Privacy</a> · <a href="terms.jsp">Terms</a></p>
            </footer>

        </div><!-- /.container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="jquery/jquery-1.11.3.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="js/holder.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="js/ie10-viewport-bug-workaround.js"></script>


        <svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" viewBox="0 0 500 500" preserveAspectRatio="none" style="display: none; visibility: hidden; position: absolute; top: -100%; left: -100%;">
        <defs>
        <style type="text/css"></style>
        </defs>
        <text x="0" y="25" style="font-weight:bold;font-size:25pt;font-family:Arial, Helvetica, Open Sans, sans-serif">
        500x500
        </text>
        </svg>
    </body>
</html>