<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<title>ERP Program</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">

<script>
	$(document).ready(
			function() {
				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "deplist"
									+ '${pageMaker.makePage(1)}'
									+ '&searchType='
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$("#depRegiBtn").on("click", function(event) {
					$("#depRegi").show()
					$(".depUpdate").hide()
					$(".depRemove").hide()
				});

				$("#depRegiClose").on("click", function(event) {
					$("#insertDepId").val('');
					$("#insertDepName").val('');
					$("#depRegi").hide()
					$(".depIdCh").val('Default Value')
					$(".depIdChFail").val('Default Value')

				});

				$("#depUpdateBtn").on("click", function() {
					$(".depUpdate").show()
					$("#depRegi").hide()
					$(".depRemove").hide()
				});

				$("#depUpdateClose").on("click", function(event) {
					$(".depUpdate").hide()
				});

				$("#depRemoveBtn").on("click", function() {
					$(".depRemove").show()
					$("#depRegi").hide()
					$(".depUpdate").hide()
				});

				$("#depRemoveClose").on("click", function() {
					$("#removeValue").val("");
					$(".depRemove").hide()
				});

				//아이디중복체크
				$("#insertDepId").on(
						"propertychange change keyup paste input",
						function() {

							//console.log("keyup 테스트");

							var id = $('#insertDepId').val();

							$.ajax({
								type : "post",
								url : "depIdCheck",
								data : {
									"id" : id
								},
								success : function(result) {
									if (result != "fail") {
										$('.depIdChk').css("display",
												"inline-block");
										$('.depIdChkFail').css("display",
												"none");
									} else {
										$('.depIdChkFail').css("display",
												"inline-block");
										$('.depIdChk').css("display", "none");
									}
								}

							})

						})

				$("#insertDepName").on(
						"propertychange change keyup paste input",
						function() {
							var name = $('#insertDepName').val();

							$
									.ajax({
										type : "post",
										url : "depNameCheck",
										data : {
											"name" : name
										},
										success : function(result) {
											if (result != "fail") {
												$('.depNameChk').css("display",
														"inline-block");
												$('.depNameChkFail').css(
														"display", "none");
											} else {
												$('.depNameChkFail').css(
														"display",
														"inline-block");
												$('.depNameChk').css("display",
														"none");
											}
										}

									})
						})
				$("#updateDepName").on(
						"propertychange change keyup paste input",
						function() {
							var name = $('#updateDepName').val();

							$
									.ajax({
										type : "post",
										url : "depNameCheck",
										data : {
											"name" : name
										},
										success : function(result) {
											if (result != "fail") {
												$('.depNameChk').css("display",
														"inline-block");
												$('.depNameChkFail').css(
														"display", "none");
											} else {
												$('.depNameChkFail').css(
														"display",
														"inline-block");
												$('.depNameChk').css("display",
														"none");
											}
										}

									})
						})

			});
</script>
<script>
	function close_btn() {
		document.getElementById("depRegi").style.display = "none";
		document.getElementById("depRegi").style.display = "none";
		document.getElementById("depRegi").style.display = "none";
		document.getElementByClassname("depIdCh").style.display = "none";
		document.getElementByClassname("depIdChFail").style.display = "none";
		document.getElementById("insertDepId").value = '';
		document.getElementById("insertDepName").value = '';

	}
</script>
<style>
div.wrap {
	width: 950px;
}

div.depsearch {
	background-color: #EDF0F5;
	margin-top: 30px;
}

.tb {
	font-size: 5pt;
	width: 100%;
	font-weight: bold;
	font-size: 15px;
	border: 1px solid #444444;
	margin-top: 10px;
	border-collapse: collapse
}

.tb td {
	border: 1px solid #444444;
	text-align: center;
}

.tb th {
	border: 1px solid #444444;
	background-color: #3770A0;
	color: white;
	text-align: center;
}

select {
	width: 120px;
}
/* div.container{
                            overflow-x : scroll ;
                            
                         } */
.pageInfo {
	list-style: none;
	display: inline-block;
	margin: 50px 0 0 100px;
}

.pageInfo li {
	float: left;
	font-size: 20px;
	margin-left: 18px;
	padding: 7px;
	font-weight: 500;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: underline;
}

.depsearch {
	position: relative;
}

#depRegi {
	width: 380px;
	height: 400px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -250px 0 0 -250px;
	background-color: rgb(243, 245, 249);
	z-index: 2;
	border: gray 2px solid;
}

#depBoxClose {
	display: inline-block;
}

.depRegiContent {
	margin-left: 20px;
	margin-top: 30px;
	font-size: small;
}

.drtb {
	text-align: center;
	border-spacing: 20px;
	border-collapse: separate;
}

a {
	text-decoration-line: none;
}

.pageInfo_area {
	margin-left: 430px;
	margin-top: 15px;
}

#depUpdateBtn {
	margin-right: 55px;
	margin-top: -30px;
	float: right;
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

#depRemoveBtn {
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
	margin-top: -30px;
	float: right;
}

#depRegiBtn {
	float: right;
	margin-right: 110px;
	margin-top: -30px;
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

#searchBtn {
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

#regiBtn {
	margin-left: 120px;
	margin-top: 20px;
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

#depRegiClose {
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

.drtb td {
	text-align: left;
}

.depUpdate {
	width: 380px;
	height: 400px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -250px 0 0 -250px;
	background-color: white;
	z-index: 2;
	border: gray 2px solid;
	background-color: rgb(243, 245, 249);
}

.depUpdateContent {
	margin-left: 20px;
	margin-top: 30px;
	font-size: small;
}

#UpdateBtn {
	margin-left: 120px;
	margin-top: 20px;
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

#UpdateBtn {
	margin-left: 120px;
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

#depUpdateClose {
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

.dutb {
	border-spacing: 20px;
	border-collapse: separate;
}

.dutb td {
	text-align: left;
}

.depRemove {
	width: 380px;
	height: 200px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -250px 0 0 -250px;
	background-color: white;
	z-index: 2;
	border: gray 2px solid;
	background-color: rgb(243, 245, 249);
}

.depRemoveContent {
	margin-left: 20px;
	margin-top: 30px;
	font-size: small;
}

#removeBtn {
	margin-left: 120px;
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

#depRemoveClose {
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 1.0rem;
	padding: 0px 10px;
	text-decoration: none;
}

.rmtb {
	border-spacing: 20px;
	border-collapse: separate;
}

.popUp_header {
	width: 377px;
	height: 80px;
	margin: 0;
	width: 100%;
	height: 30px;
	background: linear-gradient(to right, black, white);
	padding: 5px;
	color: white;
	position: relative;
	font-weight: 900;
	font-size: 1.1rem;
}

.close_btn {
	padding: 0;
	margin: 0;
	width: 20px;
	height: 20px;
	background-image:
		url('${pageContext.request.contextPath}/resources/img/x.png');
	position: absolute;
	top: 5px;
	left: 350px;
}

/*중복체크*/
.depIdChk {
	color: green;
	display: none;
}

.depIdChkFail {
	color: red;
	display: none;
}

.depNameChk {
	color: green;
	display: none;
}

.depNameChkFail {
	color: red;
	display: none;
}
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

			<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/controller/">
				<div class="sidebar-brand-icon">
					<i class="fas fa-dice-d20"></i>
				</div>
				<div class="sidebar-brand-text mx-3">ERP 프로그램</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">management</div>

			<!-- Nav Item - Pages Collapse Menu -->

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item active"><a class="nav-link collapsed"
				href="#" data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-dot-circle"></i> <span>인사 관리</span>
			</a>
				<div id="collapseUtilities" class="collapse show"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="/controller/project/enroll">사원정보 등록</a> <a
							class="collapse-item" href="/controller/employee_info">사원정보 현황</a> <a
							class="collapse-item active" href="/controller/dep/deplist">부서 등록</a> <a class="collapse-item"
							href="/controller/project/jobs">연봉 관리</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->

			<!-- Nav Item - Charts -->
	
			<!-- Divider -->
			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light topbar mb-4 static-top shadow"
					style="background-image: url('${pageContext.request.contextPath}/resources/img/back.PNG'); height: 54px;">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">








					<body>

						<img
							src="${pageContext.request.contextPath}/resources/img/title.JPG">
						<a href="deplist">부서등록(department)</a>

						<div class="wrap">
							<div
								style="font-weight: bold; font-size: 1.5em; line-height: 1.0em; font-family: 돋움체;">

							</div>

							<div class="depsearch">
								<form id='search'>

									<select name="searchType">

										<option value="n"
											<c:out value="${pageMaker.searchType==null?'selected':'' }"/>>----</option>
										<option value="dID"
											<c:out value="${pageMaker.searchType eq 'dID'?'selected':'' }"/>>부서ID</option>
										<option value="dName"
											<c:out value="${pageMaker.searchType eq 'dName'?'selected':'' }"/>>부서이름</option>
										<option value="mID"
											<c:out value="${pageMaker.searchType eq 'mID'?'selected':'' }"/>>매니저ID</option>
										<option value="loID"
											<c:out value="${pageMaker.searchType eq 'loID'?'selected':'' }"/>>지역ID</option>

									</select> <input type="text" name="keyword" id="keywordInput"
										value="${pageMaker.keyword}">
									<button id="searchBtn">검색</button>

								</form>
								<button id="depRegiBtn">등록</button>
								<button id="depUpdateBtn">수정</button>
								<button id="depRemoveBtn">삭제</button>

							</div>

							<div id="depRegi" style="display: none">
								<div class="popUp_header">
									<img
										src="${pageContext.request.contextPath}/resources/img/arrow.png"
										style="width: 20px;">부서등록
									<button class="close_btn" onclick="close_btn()"></button>
								</div>
								<div class="depRegiContent">
									<form action="insert" method="post">
										<table class="drtb">
											<tr>
												<td>부서id</td>
												<td><input type="text" id="insertDepId"
													name="department_id" required></td>
												<td><span class="depIdChk">가능</span></td>
												<td><span class="depIdChkFail">불가</span></td>
											</tr>
											<tr>
												<td>부서이름</td>
												<td><input type="text" id="insertDepName"
													name="department_name" required></td>
												<td><span class="depNameChk">가능</span></td>
												<td><span class="depNameChkFail">불가</span></td>
											</tr>
											<tr>
												<td>매니저ID</td>
												<td><select name="manager_id">
														<option>매니저선택</option>
														<c:forEach items="${listManager }" var="maDto">
															<option id="manager_id" value="${maDto.manager_id }">
																${maDto.manager_id }</option>
														</c:forEach>
												</select>
											</tr>
											<tr>
												<td>지역ID</td>
												<td><select name="location_id">
														<option>지역선택</option>
														<c:forEach items="${listLocation}" var="loDto">


															<option id="location_id" value="${loDto.location_id}">

																${loDto.location_id}</option>
														</c:forEach>
												</select></td>
											</tr>
										</table>



										<button type="submit" id="regiBtn">등록</button>
										<button type="button" id="depRegiClose">닫기</button>

										<!-- <button id="depRegi_regiBtn" name="depRegi_regiBtn">등록</button> -->

									</form>

								</div>
							</div>
							<div class="depUpdate" style="display: none">
								<div class="popUp_header">
									<img
										src="${pageContext.request.contextPath}/resources/img/arrow.png"
										style="width: 20px;">부서수정
									<button class="close_btn" onclick="close_btn()"></button>
								</div>
								<div class="depUpdateContent">
									<form action="update" method="post">
										<table class="dutb">
											<tr>
												<td>부서id</td>
												<td><select name="department_id">
														<c:forEach items="${listDepId }" var="idDto">
															<option id="department_id"
																value="${idDto.department_id }">
																${idDto.department_id }</option>
														</c:forEach>

												</select></td>
											</tr>
											<tr>
												<td>부서이름</td>
												<td><input type="text" id="updateDepName"
													name="department_name"></td>
												<td><span class="depNameChk">가능</span></td>
												<td><span class="depNameChkFail">불가</span></td>
											</tr>
											<tr>
												<td>매니저ID</td>
												<td><select name="manager_id">
														<option>매니저선택</option>
														<c:forEach items="${listManager }" var="maDto">
															<option id="manager_id" value="${maDto.manager_id }">
																${maDto.manager_id }</option>
														</c:forEach>
												</select>
											</tr>
											<tr>
												<td>지역ID</td>
												<td><select name="location_id">
														<option>지역선택</option>
														<c:forEach items="${listLocation}" var="loDto">


															<option id="location_id" value="${loDto.location_id}">

																${loDto.location_id}</option>
														</c:forEach>
												</select></td>
											</tr>
										</table>



										<button type="submit" id="UpdateBtn">등록</button>
										<button type="button" id="depUpdateClose">닫기</button>

										<!-- <button id="depRegi_regiBtn" name="depRegi_regiBtn">등록</button> -->

									</form>


								</div>

							</div>

							<div class="depRemove" style="display: none">
								<div class="popUp_header">
									<img
										src="${pageContext.request.contextPath}/resources/img/arrow.png"
										style="width: 20px;">부서삭제
									<button class="close_btn" onclick="close_btn()"></button>
								</div>
								<div class="depRemoveContent">
									<form action="remove" method="post">
										<table class="rmtb">
											<tr>
												<td>부서id</td>
												<td><select name="department_id">
														<c:forEach items="${listDepId }" var="idDto">
															<option id="department_id"
																value="${idDto.department_id }">
																${idDto.department_id }</option>
														</c:forEach>

												</select></td>
											</tr>
											<!-- <tr>
												<td>부서이름</td>
												<td><input type="text" name="department_name"></td>
											</tr>
											<tr>
												<td>매니저ID</td>
												<td><input type="text" name="manager_id"></td>

											</tr>
											<tr>
												<td>지역ID</td>
												<td><input type="text" name="location_id"></td>
											</tr> -->
										</table>



										<button type="submit" id="removeBtn">삭제</button>
										<button type="button" id="depRemoveClose">닫기</button>

										<!-- <button id="depRegi_regiBtn" name="depRegi_regiBtn">등록</button> -->

									</form>


								</div>

							</div>
							<div>
								<table class="tb">
									<tr>
										<th>부서ID</th>
										<th>부서이름</th>
										<th>매니저ID</th>
										<th>지역ID</th>
									</tr>


									<c:forEach items="${listDep}" var="DepDto">
										<tr>

											<td>${DepDto.department_id}</td>
											<td>${DepDto.department_name}</td>
											<td>${DepDto.manager_id}</td>
											<td>${DepDto.location_id}</td>

										</tr>
									</c:forEach>


								</table>
								<div class="pageInfo_wrap">
									<div class="pageInfo_area">
										<c:forEach begin="${pageMaker.startPage }"
											end="${ pageMaker.endPage}" var="idx">
											<a href='deplist${pageMaker.makeSearch(idx)}'
												<c:out value="${pageMaker.page==idx?' class=active ':'' }"/>>
												${idx}</a>
										</c:forEach>



									</div>
								</div>
							</div>

						</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2021</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>
</body>
</html>