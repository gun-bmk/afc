<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">

    <title></title>

    <!-- Bootstrap core CSS -->
    <!-- Placed at the end of the document so the pages load faster -->
   	
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
   	<g:javascript src="bootstrap.min.js"/>
   	<g:javascript src="jquery-2.1.1.js"/>
  </head>

  <body>
     <div class="row" style="background:#00CC66;">
        <h1 style="text-align:center ; padding-top: 50px; color: white;">AFC : Football Announcer comment </h1>
        <br>
        <br>
      </div>

    <div class="container" style="margin-top:40px;">
     

      <div class="row">

	<g:each in="${matchList}" var="${matchInstance}">
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <div style="background-image:url('../images/ffc_icon/glass.jpg'); padding-bottom:30px; padding-top:20px; background-repeat:no-repeat; background-position:0 0; background-size: cover;">
          <p style="text-align: center; padding-top:10px; color:white; font-size: 20px "><b>Location : ${matchInstance.place}</b></p>
          <div style="padding-left: 30%;">
          <g:img class="img-circle" style="width:50px !important; float:left;" dir="images/ffc_icon" file="fb1.jpg"/>
          <p style="text-align:center; float:left; padding: 5px 10px 0 10px; color:white; font-size: 24px;" >x</p>
          <g:img class="img-circle" style="width:50px !important; float:left;" dir="images/ffc_icon" file="fb3.jpg"/>
          </div>
          <div style="clear: both;"></div>
        </div>
          <div class="caption">
            <small>
            <p style="text-align: center; padding-top: 5px;">Time : ${matchInstance.date}</p>
            </small>
            <p style="text-align: center;">${matchInstance.commentators.commentator.name}</p>
          </div>
        </div>
      </div>
	</g:each>
    </div><!-- row -->


    </div><!-- /.container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    
  </body>
</html>