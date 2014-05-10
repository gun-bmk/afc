<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<title>Match Detail</title>

<!-- Bootstrap core CSS -->
<link href="${resource(dir: 'css', file: 'bootstrap.min.css')}"
	rel="stylesheet">

<!-- Placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>


</head>
<body>
	<g:link controller="match" action="list">
		<div id="logo" style="background: green; height: 140px; color: white;">
			<h1 align="center" style="padding-top: 50px; margin-top: 0;">AFC</h1>
		</div>
		<!-- Logo -->
	</g:link>

	<div class="container" style="margin-top: 40px;">

		<div id="match_detail_container" style="background-color: aqua;">
			<br />
			<table width="100%" border="0">
				<tr>
					<td colspan="6" align="center"><span id="location">
							${match.place }
					</span><br />
					<br /></td>
				</tr>
				<tr>
					<td colspan="3" align="center" width="50%"><img
						src="https://yt3.ggpht.com/-TrtEHOgcMFE/AAAAAAAAAAI/AAAAAAAAAAA/K547x_dy1bY/s900-c-k-no/photo.jpg"
						alt="" width="200" height="200" id="img3" /> <br />
					<span id="home_short_name">
							${match.home.shortName}
					</span></td>
					<td colspan="3" align="center" width="50%"><img
						src="http://blogs-images.forbes.com/mikeozanian/files/2013/01/296px-Manchester_United_FC_crest.svg_.png"
						alt="" width="200" height="200" id="img4" /> <br />
					<span id="away_short_name">
							${match.away.shortName }
					</span></td>
				</tr>
				<tr>
					<td colspan="6" align="center"><br />
						${match.date } <br />
					<br /></td>
				</tr>
				<g:each in="${commentators}" var="commentator">
					<tr>



						<td align="right"><img
							src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash1/t1.0-1/c0.4.200.200/p200x200/1904112_670798462980493_1480381048_n.jpg"
							alt="" width="100" height="100" id="img1" /></td>
						<td>
							${commentator.name}
						</td>
						<%--<td align="right" ><img src="http://cartoon.mthai.com/wordpress/wp-content/uploads/wp-post-thumbnail/H8pATT.jpg" alt="" width="100" height="100" id="im2" /></td>
          <td >Commentater Name</td>
          <td align="right" ><img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash3/t1.0-1/c18.18.221.221/s200x200/558377_155655321252236_515215105_n.jpg" alt="" width="100" height="100" id="img3" /></td>
          <td >Commentater Name</td>
        --%>
					</tr>
				</g:each>
			</table>
			<br />

		</div>
		<!-- match_detail_container -->

		<br />
		<br />
		<div id="comment_container">

			<div class="comment_wrapper" style="margin-bottom: 30px;">
				<g:each in="${comments}" var="comment">
					<table width="100%" border="0">
						<tr>
							<td colspan="2">
								${comment.authorName}
							</td>
							<td width="68%" rowspan="2" bgcolor="#99FFFF">
								${comment.comment}
							</td>
						</tr>
						<tr>
							<td width="5%"><g:link controller="comment" action="like"
									params="[id: comment.id]">
									<img src="${resource(dir: 'images', file: 'like-img.jpeg')}"
										width="30px">
								</g:link></td>
							<td width="10%">
								${comment.likeCount}
							</td>
						</tr>
					</table>
					<br />
				</g:each>

				<%--<table width="100%" border="0">
          <tr>
            <td colspan="2" >Peter</td>
            <td width="68%" rowspan="2" bgcolor="#99FFFF">พากย์ไม่ดีเลย </td>
          </tr>
          <tr>
            <td width="5%"><img src="http://www.employmentlawebuzz.com/files/2013/10/main-thumb-t-8762-50-xjPOswuVFn5ZplI8yJx4s1Zii1rnCXiS.jpeg" width="30px"></td>
            <td width="10%">54</td>
          </tr>
        </table>
        <br />
        <table width="100%" border="0">
          <tr>
            <td colspan="2" >John</td>
            <td width="68%" rowspan="2" bgcolor="#99FFFF">ใช่ ๆพากย์ไม่ดีเลย </td>
          </tr>
          <tr>
            <td width="5%"><img src="http://www.employmentlawebuzz.com/files/2013/10/main-thumb-t-8762-50-xjPOswuVFn5ZplI8yJx4s1Zii1rnCXiS.jpeg" width="30px"></td>
            <td width="10%">10</td>
          </tr>
        </table>
        --%>
				<br />
				<div style="float: right;">
					<button type="button" class="btn btn-default" id="btn_more">More</button>
				</div>
				<br />

			</div>
			<!-- comment_wrapper -->


			<div class="comment_box_wrapper" style="margin-bottom: 100px;">
				<g:form action="addComment" name="form" class="form-inline"
					role="form">
					<textarea class="form-control" id="textarea" rows="6"
						placeholder="Comment" name="comment" style="width: 1135px;"></textarea>
					<br />
					<br />
					<div class="form-group">
						<label class="sr-only" for="exampleInputEmail2">Name</label> <input
							type="text" name="authorName" class="form-control" id="name"
							placeholder="Name">
						<g:hiddenField name="matchId" value="${match.id}" />
					</div>
					<button type="submit" class="btn btn-default">Send</button>
				</g:form>

			</div>
			<!-- comment_box_wrapper -->

		</div>
		<!-- comment_container -->
	</div>
	<!-- /.container -->
	<!-- Bootstrap core JavaScript
    
    ================================================== -->

</body>
</html>
