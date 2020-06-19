<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>준 앤 찬</title>
    <link href="resources/css/styles.css" rel="stylesheet" />
<meta charset="UTF-8">
</head>
	<body id="page-top">
	<header class="masthead">
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">준 앤 찬</a>
            </div>
   	</nav>
        <!-- Masthead-->
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase">로그인</h1>
                    <br>
                    <form action="logincheck.do">
                    <h2 class="text-white-50 mx-auto mt-2 mb-5">
                    <table>
                    <tr><td>ID 입력 :</td><td><input type="text" name="id"></td></tr>
					<tr><td>PW 입력 :</td><td><input type="text" name="pw"></td></tr>
					</table>
					</h2>
					<button class="btn btn-primary js-scroll-trigger " type="submit">로그인</button>
					</form>
                </div>
            </div>
        </header>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/scripts.js"></script>
</body>
</html>