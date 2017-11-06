<!DOCTYPE html>
<html lang="sq">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Portali Online i Materialeve Studentore">
    <meta name="author" content="POMS">

    <title>POMS - Portali Online i Materialeve Studentore</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

</head>

<body>
    <!-- Login Form -->
    <a name="about"></a>
    <div class="section-signin">
        <div class="wrapper">
            <form action="includes/process_login.php" method="post" name="login_form" class="form-signin">
                <div class="space">
                    <img src="img/poms-logo.png" alt="POMS Logo" class="logo-signin">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="email" placeholder="E-posta" required="" autofocus="" />
                </div>
                <div class="form-group">
                    <input id="password" type="password" class="form-control" name="password" placeholder="Fjalëkalimi" required="" />
                </div>
                <div class="space">
                    <button class="btn btn-lg btn-primary btn-block" type="button" onclick="formhash(this.form, this.form.password);">Lidhu</button>
                </div>
                <a href="#">Ke harruar fjalëkalimin?</a>
            </form>
        </div>
    </div>
    <!-- Login Form end -->

    <!-- Contact Form -->
    <a name="services"></a>
    <div class="content-section-a">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h1>Na kontakto</h1>
                    <form id="contact-form" method="post" action="contact.php" role="form">
                        <div class="messages"></div>
                        <div class="controls">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_name">Emri:</label>
                                        <input id="form_name" type="text" name="name" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_email">E-posta:</label>
                                        <input id="form_email" type="email" name="email" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="form_subject">Subjekti:</label>
                                        <input id="form_subject" type="text" name="subject" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="form_message">Mesazhi:</label>
                                        <textarea id="form_message" name="message" class="form-control" rows="4" required="required"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <input type="submit" class="btn btn-success btn-send" value="Dërgo mesazhin">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Form end -->

    <!-- Footer -->
    <footer class="footer-distributed">
        <div class="footer-left">
            <h1><img class="navbar-brand" src="img/poms-logo.png" alt="POMS Logo"></h1>
            <p class="footer-links">
                <a href="#section1">Kryefaqja</a> ·
                <a href="#">Rreth Nesh</a>
            </p>
            <p class="footer-company-name">POMS Staff &copy; 2016</p>
        </div>
        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>Rruga e Shkronjave, nr.1 - 20000 Prizren, </span>Republika e Kosovës</p>
            </div>
            <div>
                <i class="fa fa-phone"></i>
                <p>+377 44 113 113</p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p><a href="mailto:pomsstaff@gmail.com">pomsstaff@gmail.com</a></p>
            </div>
        </div>
        <div class="footer-right">
            <p class="footer-company-about">
                <span>Rreth POMS</span> Portali Online i Materialeve Studentore është një iniciativë me qëllim të lehtësimit së komunikimit ndërmjet profesorëve dhe studentëve.
            </p>
            <div class="footer-icons">
                <a href="file.xml"><i class="fa fa-rss"></i></a>
                <a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a>
                <a href="http://www.twitter.com"><i class="fa fa-twitter"></i></a>
                <a href="http://www.linkedin.com"><i class="fa fa-linkedin"></i></a>
                <a href="http://www.github.com"><i class="fa fa-github"></i></a>
            </div>
        </div>
    </footer>
    <!-- Footer end -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Login Scripts> -->
    <script type="text/JavaScript" src="js/sha512.js"></script> 
    <script type="text/JavaScript" src="js/forms.js"></script> 
</body>
</html>
