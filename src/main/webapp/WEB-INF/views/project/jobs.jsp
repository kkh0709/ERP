<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>ERP Program</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">

<!-- Custom styles for this template-->

<link href="${pageContext.request.contextPath}/resources/css/거래처등록.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/거래처등록.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet" type="text/css">
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<style>
.pop_up123 {
	width: 570px;
	height: 180px;
	position: absolute;
	top: 0px;
	left: 0px;
	z-index: 1;
	display: none;
	left: 0px;
}

/* .pop_upback {
	margin-top: 15%;
            margin-left: 30%;
            font-size: 0.8rem;
            width: 300px;
            background: white;
            z-index: 2;    
            display: none;
            position: absolute;
} */

/*        body {
            margin: 0;
            font-size: 0.8rem;
            width: 800px;
        } */
#pop_title {
	margin: 0;
	width: 100%;
	height: 30px;
	background: linear-gradient(to right, black, white);
	padding: 5px;
	color: white;
	font-weight: 900;
	font-size: 1.1rem;
	text-align: center;
}

#pop_tableDiv {
	border: 1px solid rgb(190, 202, 218);
	background-color: rgb(243, 245, 249);
	margin-left: 5px;
	height: 170px;
	overflow-y: scroll;
}

.pop_table {
	border-spacing: 0px;
}

.pop_table tr td {
	background-color: white;
	text-align: center;
	height: 13px;
}

.pop_table td {
	border: 1px solid rgb(160, 178, 197);
	height: 13px;
}

.pop_table th {
	border: 1px solid rgb(160, 178, 197);
	background-color: rgb(62, 137, 180);
	color: white;
	text-align: center;
	height: 13px;
}

#close_btn {
	width: 20px;
	height: 20px;
	background-image:
		url(${pageContext.request.contextPath}/resources/img/x.png);
	position: relative;
	float: right;
}

.myButton {
	box-shadow: inset 0px 0px 2px 1px #96c5e0;
	background: linear-gradient(to bottom, #ffffff 40%, #afc9e0 100%);
	background-color: #ffffff;
	border-radius: 5px;
	border: 1px solid #667b94;
	display: inline-block;
	cursor: pointer;
	color: #000000;
	font-family: Arial;
	font-size: 0.8rem;
	padding: 4px 20px;
	text-decoration: none;
	height: 25px;
	margin-top: 2px;
}

.myButton:hover {
	background: linear-gradient(to bottom, #afc9e0 5%, #ffffff 100%);
	background-color: #afc9e0;
}

.myButton:active {
	position: relative;
	top: 1px;
}

.pop_table tr.activated {
	background-color: rgb(255, 208, 119);
}
</style>
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
							class="collapse-item" href="/controller/dep/deplist">부서 등록</a> 
							<a class="collapse-item  active" href="/controller/project/jobs">연봉 관리</a>
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

					<div id="vender">
						<!--전체 상자-->
						<div id="venderTop">

							<h5 id="VLtitle">

								<img
									src="${pageContext.request.contextPath}/resources/img/arrow.png"
									alt="" id="arrow"> <b>연봉 관리</b>
							</h5>
							<div>
								ID검색: <input type="text" id="jobIdSearch"> 직업명: <input
									type="text" id="jobTitleSearch">
								<!-- 구분: <select>
									<option value="">0.미사용</option>
									<option value="">1.사용</option>
									<option value="">2.전체조회</option> 일단 필요없으니 삭제. 
								</select> -->
								<button type="button" onclick="jobSearch()">조회</button>
							</div>
						</div>
						<div id="venderLeft" style="width: 950px;">

							<form id="jo">

								<div id="VLcompany" style="overflow-x: hidden; width: 945px;">

									<table id="VLtab" style="background-color: white;">
										<thead>
											<tr id="VLcompanyTop">
												<td style="width: 50px"></td>
												<td style="width: 50px">no</td>
												<td style="width: 210px">ID</td>
												<td style="width: 230px">직업명</td>
												<td style="width: 220px;">최소 연봉</td>
												<td style="width: 220px;">최대 연봉</td>
											</tr>
											<c:forEach items="${jobs}" var="dto" varStatus="status">
												<tr id="job_sal" class="input_jobs">
													<td><input type="radio" name="job_ra"
														class="job_ch radio_ga" id="${dto.job_id}"
														value="${dto.job_id}"></td>
													<td><input type="text" class="job_no"
														value="${status.count}"></td>
													<td><input type="text" class="job_id" name="job_id"
														value="${dto.job_id}" readonly></td>
													<td><input type="text" class="job_title"
														name="job_title" value="${dto.job_title}"></td>
													<td><input type="text" class="min_salary"
														name="min_salary" value="${dto.min_salary}"></td>
													<td><input type="text" class="max_salary"
														name="max_salary" value="${dto.max_salary}"></td>
												</tr>
											</c:forEach>


											<tr id="job_id">
												<td><input type="text" value=""></td>
												<td><input type="text" value=""></td>
												<td><input type="text" value=""></td>
												<td><input type="text" value=""></td>
												<td><input type="text" value=""></td>
												<td><input type="text" value=""></td>

											</tr>
										</thead>

									</table>


								</div>

								<input type="button" id="btnopen1" onclick="addModal123()"
									value="직업등록" style="background-color: white;"> <input
									type="submit" class="removeJ" value="직업삭제"
									style="background-color: white;"> <input type="submit"
									class="updateJ" value="직업수정" style="background-color: white;">


							</form>

						</div>
						<div class="pop_up123">
							<form action="/controller/project/insertJobs" method="post">
								<div id="pop_title">
									<img
										src="${pageContext.request.contextPath}/resources/img/arrow.png"
										style="width: 20px;"> 연봉관리

									<button id="close_btn" type="button" onclick="modalClose()"></button>
								</div>
								<div id="pop_tableDiv">
									<table class="pop_table">
										<tr>


											<th style="width: 110px;">ID</th>
											<th style="width: 200px;">직업명</th>
											<th style="width: 110px;">최소연봉</th>
											<th style="width: 110px;">최대연봉</th>

										</tr>
										<tr >
											<td><input style="width: 110px;" type="text"  name="job_id" ></td>
											<td><input style="width: 200px;" type="text"  name="job_title"></td>
											<td><input style="width: 110px;" type="text"  name="min_salary"></td>
											<td><input style="width: 110px;" type="text"  name="max_salary"></td>


										</tr>
									</table>


									<button style="float: right" id="" type="submit"
										>등록하기</button>
								</div>
							</form>
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





			<script type="text/javascript">
				// 모달 열기
				function modalOpen() {
					document.querySelector('.pop_up123').style.display = 'block';
					document.querySelector('.pop_up123').style.display = 'block';
				}

				// 모달 끄기
				function modalClose() {
					document.querySelector('.pop_up123').style.display = 'none';
					document.querySelector('.pop_up123').style.display = 'none';
				}
				//버튼 클릭리스너 달기
				document.querySelector('#btnopen1').addEventListener('click',
						modalOpen);
				document.querySelector('#close_btn').addEventListener('click',
						modalClose);
			</script>
			<script
				src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>

			<script type="text/javascript">
	/* 			$(document).ready(function() {
					$(".pop_up123").draggable();
				});
 */
				// 직업수정
				$(".updateJ")
						.on(
								"click",
								function() {
									var jobId = document
											.getElementsByClassName("radio_ga");
									var inputJob = document
											.getElementsByClassName("input_jobs");
									var jobTest2 = document
											.querySelector('input[name="job_ra"]:checked').value

									for (var i = 0; i < jobId.length; i++) {
										if (jobId[i].checked == true) {
											console.log("체크됨")
											console
													.log(inputJob[i].children[2].firstChild);
											console
													.log(inputJob[i].children[2].firstChild.disabled);
										} else {
											inputJob[i].children[2].firstChild.disabled = true;
											inputJob[i].children[3].firstChild.disabled = true;
											inputJob[i].children[4].firstChild.disabled = true;
											inputJob[i].children[5].firstChild.disabled = true;
										}
									}
									$("#jo").attr("action","/controller/project/updateJobs");
									$("#jo").attr("method", "POST");
								})

								
								
				//직업삭제

				$(".removeJ").on("click",function() {
									var jobId = document
											.getElementsByClassName("radio_ga");
									var inputJob = document
											.getElementsByClassName("input_jobs");
									var jobTest2 = document
											.querySelector('input[name="job_ra"]:checked').value

									for (var i = 0; i < jobId.length; i++) {
										if (jobId[i].checked == true) {
											console.log("체크됨")
											console
													.log(inputJob[i].children[2].firstChild);
											console
													.log(inputJob[i].children[2].firstChild.disabled);
										} else {
											inputJob[i].children[2].firstChild.disabled = true;
											/* 							inputJob[i].children[3].firstChild.disabled = true;
											 inputJob[i].children[4].firstChild.disabled = true;
											 inputJob[i].children[5].firstChild.disabled = true; 삭제는 job_id 하나만 지정해서 나머지 필요없ㅎ음  */
										}
									}
									$("#jo").attr("action",
											"/controller/project/removeJobs");
									$("#jo").attr("method", "POST");
								})

				//     검색기능  ㅁㄴㅇㅁㄴㅇ					
				function jobSearch() {
					var SearchName = document.getElementById("jobTitleSearch").value;
					var idName = document.getElementsByClassName("job_id");
					var titleName = document
							.getElementsByClassName("job_title");

					var min = document.getElementsByClassName("min_salary");
					var max = document.getElementsByClassName("max_salary");
					var no = document.getElementsByClassName("job_no");
					var ch = document.getElementsByClassName("job_ch");

					for (let i = 0; i < titleName.length; i++) {
						idName[i].parentNode.style.display = "";
						titleName[i].parentNode.style.display = "";
						min[i].parentNode.style.display = "";
						max[i].parentNode.style.display = "";
						no[i].parentNode.style.display = "";
						ch[i].parentNode.style.display = "";
					}

					for (let i = 0; i < titleName.length; i++) {
						var fullname = titleName[i].value;
						if (fullname.includes(SearchName)) {
							console.log(SearchName);
						} else {
							idName[i].parentNode.style.display = "none";
							titleName[i].parentNode.style.display = "none";
							min[i].parentNode.style.display = "none";
							max[i].parentNode.style.display = "none";
							no[i].parentNode.style.display = "none";
							ch[i].parentNode.style.display = "none";
						}
					}

					var SearchName2 = document.getElementById("jobIdSearch").value;

					for (let i = 0; i < titleName.length; i++) {
						var fullname = idName[i].value;
						if (fullname.includes(SearchName2)) {
							console.log(SearchName2);
						} else {
							idName[i].parentNode.style.display = "none";
							titleName[i].parentNode.style.display = "none";
							min[i].parentNode.style.display = "none";
							max[i].parentNode.style.display = "none";
							no[i].parentNode.style.display = "none";
							ch[i].parentNode.style.display = "none";
						}
					}

				}

				/* 		$(document).ready(function(){
							   $('table tr').click(function(){
							      $(this).css("backgroundColor","#ccc");
							   });
							   $('table tr').click(function(){
							      $(this).css("backgroundColor","#fff");
							   });
							}); */

				/* https://www.w3schools.com/code/tryit.asp?filename=G7T7OEJBBQ54   예시사이트 */
			</script>



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