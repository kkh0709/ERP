<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
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

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet" type="text/css">
<style>
.hr {
	width: 950px;
	font-size: 0.7rem;
	padding-left: 20px;
	position: relative;
}

.hr-top, .hr-bot {
	width: 950px;
}

.hr-top {
	font-size: 1rem;
	font-weight: bold;
}

.hr-top>div {
	display: inline-block;
}

.hr-top input {
	font-size: 0.7rem;
	height: 20px;
}

.hr-left{
	display: inline-block;
}

.hr-left {
	width: 270px;
}

.hr-right {
	display:none;
	width: 670px;
	height: 685px;
	vertical-align: top;
}

.hr-table {
	width: 240px;
}
.hr-table input{
	border: 0px;
}
td {
	border: 1px solid rgb(221, 234, 245);
	text-align: center;
}

tr {
	background-color: white;
}

th {
	border: 1px solid rgb(221, 234, 245);
	background-color: rgb(62, 137, 180);
	color: white;
	text-align: center;
}

.hr-personal {
	width: 670px;
	height: 260px;
}

.hr-personal>div {
	display: inline-block;
	height: 260px;
	vertical-align: top;
}

.hr-address>div {
	display: inline-block;
	height: 420px;
	vertical-align: top;
}

.hr-job {
	width: 670px;
	height: 160px;
}

.hr-job>div {
	display: inline-block;
	height: 160px;
	vertical-align: top;
}

.hr-work {
	width: 670px;
	height: 360px;
}

.hr-work>div {
	display: inline-block;
	height: 360px;
	vertical-align: top;
}

.hr-pay {
	width: 670px;
	height: 240px;
}

.hr-pay>div {
	display: inline-block;
	height: 240px;
	vertical-align: top;
}

.hr-insurance {
	width: 670px;
	height: 140px;
}

.hr-insurance>div {
	display: inline-block;
	height: 140px;
	vertical-align: top;
}

.hr-wage {
	width: 670px;
	height: 280px;
}

.hr-wage>div {
	display: inline-block;
	height: 280px;
	vertical-align: top;
}

.hr-border {
	border: 1px solid rgb(190, 202, 218);
	border-radius: 8px;
	background-color: rgb(243, 245, 249);
}

.hr-search {
	padding: 12px 0px 12px 20px;
	height: 65px;
}

.hr-tab {
	height: 25px;
	position: relative;
}

.hr-tab>ul {
	margin: 0;
	padding: 0;
	height: 25px;
}

.hr-tab li {
	list-style: none;
	display: inline-block;
	width: 70px;
	height: 25px;
	text-align: center;
	border: 1px solid rgb(190, 202, 218);
	border-radius: 8px;
	line-height: 25px;
	background-color: rgb(237, 240, 243);
}

.hr-tab a {
	color: black;
	text-decoration: none;
	cursor: default;
}

.hr-sidetab {
	width: 25px;
	padding: 5px;
}

.hr-sidetab>img {
	width: 15px;
}

.hr-tab li.active {
	background-color: rgb(198, 217, 230);
	font-weight: bold;
	text-shadow: 1px 1px rgb(160, 171, 180);
}

.hr-right>div:not(.hr-tab){
display:none;
}

.hr-right>div.active {
	display: block;
}

.picture {
	border: 1px solid black;
	margin: 8px;
	height: 80%;
}

.pic_btn, .picdel_btn {
	width: 90%;
	margin-left: 8px;
	border-radius: 5px;
	background-color: rgb(230, 238, 243);
	border-color: rgb(192, 212, 214);
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
	padding: 0px 10px;
	text-decoration: none;
	height: 20px;
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

.hr-content {
	padding-left: 20px;
	line-height: 1;
	padding-top: 5px;
}

.hr-content label {
	width: 100px;
	text-align: right;
}

.hr-content input {
	border-color: rgb(205, 215, 235);
}

.hr-content select:disabled {
	border-color: rgb(0, 0, 0);
}

.hr-personal input {
	width: 180px;
	height: 19px;
}

.hr-personal select {
	width: 180px;
}

.hr-address input {
	width: 350px;
	height: 19px;
}

.hr-address select {
	width: 122px;
}

#hr-gradeBtn, #hr-leaveBtn, #hr-dayoffBtn, #hr-departmentBtn,
	#hr-emptypeBtn, #hr-occupationBtn, #hr-paytypeBtn, #hr-rankBtn,
	#hr-positionBtn, #hr-dutyBtn, #hr-reasonBtn, #hr-EIBtn, #hr-HIBtn,
	#hr-PPBtn, #hr-NPBtn, #hr-bankBtn, #hr-bankBtn2, #hr-paystepBtn,
	#hr-accounttypeBtn {
	border: 2px solid rgb(200, 218, 240);
	background-image:url('${pageContext.request.contextPath}/resources/img/searchBtn.png');
	padding: 0;
	height: 19px;
	width: 19px;
	vertical-align: top;
}

.hr-job input, .hr-job select {
	width: 120px;
}

.hr-pay select {
	width: 140px;
}

.hr-insurance input, .hr-insurance select {
	width: 140px;
}

tabl.activeTable {
	background-color: rgb(255, 208, 119);
}

#wage_salary {
	border: none;
	background-color: inherit;
	text-align: center;
}
#sawon-submit{
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
	padding: 0px 10px;
	text-decoration: none;
	height: 20px;
	margin-top: 2px;
	position: absolute;
	top:0px;
	right:20px;
}
#sawon-submit:hover{
	background: linear-gradient(to bottom, #afc9e0 5%, #ffffff 100%);
	background-color: #afc9e0;
}
#sawon-submit:active{
	position: absolute;
	top:1px;
	right:20px;
} 
        #pop_title {
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

        #pop_search {
            height: 60px;
            border: 1px solid rgb(190, 202, 218);
            border-radius: 8px;
            background-color: rgb(243, 245, 249);
            margin-left: 5px;
            padding: 5px 0px 5px 20px;
        }

        #pop_btn {
            height: 30px;
            margin-left: 5px;
            text-align: right;
        }

        #pop_tableDiv {
            border: 1px solid rgb(190, 202, 218);
            background-color: rgb(243, 245, 249);
            margin-left: 5px;
            height: 250px;
            overflow-y: scroll;
        }
        .pop_table{
            border-spacing: 0px;
        }

        .pop_table tr {
            background-color: white;
            text-align: center;
        }
        .pop_table td{
            border: 1px solid rgb(160, 178, 197);
        }

        .pop_table th {
            border: 1px solid rgb(160, 178, 197);
            background-color: rgb(62, 137, 180);
            color: white;
            text-align: center;
        }

        #close_btn {
            padding: 0;
            margin: 0;
            width: 20px;
            height: 20px;
            background-image: url('${pageContext.request.contextPath}/resources/img/x.png');
            position: absolute;
            top: 5px;
            left: 270px;
        }
        #close_btn2 {
            padding: 0;
            margin: 0;
            width: 20px;
            height: 20px;
            background-image: url('${pageContext.request.contextPath}/resources/img/x.png');
            position: absolute;
            top: 5px;
            right: 5px;
        }

        .pop_myButton {
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

        .pop_myButton:hover {
            background: linear-gradient(to bottom, #afc9e0 5%, #ffffff 100%);
            background-color: #afc9e0;
        }

        .pop_myButton:active {
            position: relative;
            top: 1px;
        }
        .pop_table tr.activated{
            background-color: rgb(255, 208, 119);
        }
        #popup_background1,#popup_background2,
        #popup_background3,#popup_background4{
        	width:100%;
        	height:100%;
        	position: absolute;
        	top: 0px;
        	left: 0px;
        	background-color: rgba(0, 0, 0, 0.5);
        	z-index: 1;
        	display: none;
        }
        #department_popup,#pop_job {
            margin-top: 15%;
            margin-left: 30%;
            font-size: 0.8rem;
            width: 300px;
            background: white;
            z-index: 3;   
            display: none;   
        }
        #insert_employee,#delete_employee{
        	margin-top: 15%;
            margin-left: 30%;
        	width: 400px;
        	height: 360px;
        	background: white;
            z-index: 3;        
        }
        #pop_search2 {
            height: 300px;
            border: 1px solid rgb(190, 202, 218);
            border-radius: 8px;
            background-color: rgb(243, 245, 249);
            margin-left: 5px;
            padding: 5px 0px 5px 20px;
        }
        #delete_employee table{
        	width: 320px;
        }
        #delete_searchtable{
        	width: 350px;
        	height: 250px;
        	backgroud-color :white;
        	border: 1px solid black;
        	overflow-y: scroll; 
        }
        #dpt_pop_title{
        	cursor: move;
        }
        /* #delete_search{
        	background-image:url('${pageContext.request.contextPath}/resources/img/searchBtn.png');
        	width: 19px;
        	height: 19px;
        } */
</style>
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	// ??? ??????
	$(document).ready(function() {
		$('.hr-tab li').click(function() {
			var tab_id = $(this).attr('tab-data');
			$('.hr-right > div').removeClass('active');
			$('.hr-tab li').removeClass('active');
			$(this).addClass('active');
			$("." + tab_id).addClass('active');
		})
	})
	
	//????????? ????????? ???????????? ??????
	var test = '<c:forEach items="${list}" var="dto">${dto.employee_id},</c:forEach>';
	var testsplit = test.split(',');
	
	$(document).ready(function(){
		var checkSawon;
		for(let i=testsplit.length-1;i>=0;i--){
			$(".sawon"+testsplit[i]).on('click',function(){
				$(".sawoninfo"+testsplit[i]).css('display','inline-block');				
				if($(".sawoninfo"+testsplit[i]).css('display')=='inline-block'){
					checkSawon=testsplit[i];
					for(let j=testsplit.length-1;j>=0;j--){
						if(testsplit[j]<checkSawon){
							$(".sawoninfo"+testsplit[j]).css('display','none')
						} else if (checkSawon<testsplit[j]){
							$(".sawoninfo"+testsplit[j]).css('display','none')
						}
					}
				};
			})
		}
		
	});
	
	function sawonsearch(){
		var sawonName = document.getElementById("sawon-name").value;
		var classname = document.getElementsByClassName("sawon-fullname");
		var codename = document.getElementsByClassName("sawon-code");
		for(let i=0;i<classname.length;i++){
			codename[i].parentNode.style.display = "";
			classname[i].parentNode.style.display = "";
		}
		for(let i=0;i<classname.length;i++){
			var fullname = classname[i].innerText;
			if(fullname.includes(sawonName)){
			} else {
				codename[i].parentNode.style.display = "none";
				classname[i].parentNode.style.display = "none";
			}
		}
	}
	//popup
    function focuss(obj) {
        var i;
        var tabNum = obj.parentNode.children.length; //????????? ?????????. ???, tbody??? tr??? ????????? ???????????????.
        for (i = 0; i < tabNum; i++)
            obj.parentNode.children[i].className = ''; 
        obj.className = 'activated'; //obj?????? ????????? tr??? ????????? ???????????????.
    }
	
	//?????? ??? ??????,??????
	function open_department(){
		document.getElementById("department_popup").style.display="block";
		document.getElementById("popup_background1").style.display="block";
	}
	function close_department(){
		document.getElementById("department_popup").style.display="none";
		document.getElementById("popup_background1").style.display="none";
	}
	function open_job(){
		document.getElementById("pop_job").style.display="block";
		document.getElementById("popup_background2").style.display="block";
	}
	function close_job(){
		document.getElementById("pop_job").style.display="none";
		document.getElementById("popup_background2").style.display="none";
	}
	function open_InsertEmp(){
		document.getElementById("popup_background3").style.display="block";
	}
	function close_InsertEmp(){
		document.getElementById("popup_background3").style.display="none";
	}
	function open_DeleteEmp(){
		document.getElementById("popup_background4").style.display="block";
	}
	function close_DeleteEmp(){
		document.getElementById("popup_background4").style.display="none";
	}
	//?????? ??? ???
	var job_value1 ='';
	var dpt_value1 ='';
	var dpt_value2 ='';
	$(function(){
		$(".job_value").click(function() {
		    job_value1 = $(this).children().first().text();
		    var job_value2 = $(this).children().last().text();
		});
		$(".dpt_value").click(function() {
		    dpt_value1 = $(this).children().first().text();
		    dpt_value2 = $(this).children().last().text();
		});
	})
	function InputJob(){
		var job_id = document.getElementsByClassName("job_id");		
 		for(var i=0;i<job_id.length;i++){
 			var employee_style = job_id[i].parentNode.parentNode.parentNode.parentNode.parentNode.style.display;
 			if(employee_style=='inline-block'){
 				job_id[i].value=job_value1;
 			}			
		}
	document.getElementById("popup_background2").style.display="none";
}
function InputDpt(){
	var dpt_id = document.getElementsByClassName("dpt_id");
	var dpt_name = document.getElementsByClassName("dpt_name");
	 		for(var i=0;i<dpt_id.length;i++){
	 			var dpt_style = dpt_id[i].parentNode.parentNode.parentNode.parentNode.parentNode.style.display;
	 			if(dpt_style=='inline-block'){
	 				dpt_id[i].value=dpt_value1;
	 				dpt_name[i].value=dpt_value2;
	 			}			
			}
		document.getElementById("popup_background1").style.display="none";
	}
function check_dpt(){
	var dptTest = document.getElementsByName("pop_dptValue").value;
	alert(dptTest);
}
/* ????????? ?????? */
$(function(){
	$(".sawon-submit").on('click',function(){
		var new_date = document.getElementsByClassName("new_date");
		var new_dpt = document.getElementsByClassName("new_dpt");
		var old_date = document.getElementsByClassName("old_date");
		var old_dpt = document.getElementsByClassName("old_dpt");
		var new_job = document.getElementsByClassName("new_job");
		var old_job = document.getElementsByClassName("old_job");
		
		for(var i=0;i<new_date.length;i++){
			var dpt_style = new_date[i].parentNode.parentNode.parentNode.parentNode.parentNode.style.display;
			if(dpt_style=='inline-block'){
				if(new_dpt[i].value==old_dpt[i].value && new_job[i].value==old_job[i].value){
					$(".sawon_data").attr("action","/controller/project/update2");
					$(".sawon_data").attr("method","POST");
				} else if(new_date[i].value==old_date[i].value && (new_dpt[i].value==old_dpt[i].value || new_job[i].value==old_job[i].value)){
					alert("????????? ?????? ????????? ?????????????????? ?????????????????????.")	
				} else {
					$(".sawon_data").attr("action","/controller/project/update");
					$(".sawon_data").attr("method","POST");
				}
			}
		}
	})
	/* ?????????????????? ?????? ????????? ??? ?????? */
	$(".delete_value1").on('click',function(){
		$(".delete_value1").css('background-color','white');
		$(this).css('background-color','rgb(255, 208, 119)');
		var DV1 = $(this).children().first().text();
		var DV2 = $(this).children().last().text()
		$('#delete_employeeid').val(DV1);
	});
	/*???????????? ???????????? ?????? */
	$('#delete_search').on('click',function(){
		var DC = $('#delete_employeeid').val();
		var FClist = document.getElementsByClassName('delete_value1');
		for(var i=0;i<FClist.length;i++){
			var OC = FClist[i].firstChild.nextSibling.innerText;
			if(OC.includes(DC)){
				FClist[i].style.display='';
			} else {
				FClist[i].style.display='none';
			}
		}
	});
	/*?????? ?????? ?????? */
	$("#dpt_check").on('click',function(){
		var dpt_check = $('#dpt_select').val();
		var dpt_list = document.getElementsByClassName('dpt_value')
		var dpt_research = $('#dpt_research').val();
		for(var i=0;i<dpt_list.length;i++){
			var dpt_code = dpt_list[i].firstChild.nextSibling.innerText;
			var dpt_nam = dpt_list[i].lastChild.previousSibling.innerText;
			if(dpt_check=="dpt_code" && dpt_code.includes(dpt_research)){
				dpt_list[i].style.display='';
			} else if(dpt_check=="dpt_nam" && dpt_nam.includes(dpt_research)){
				dpt_list[i].style.display='';
			} else {
				dpt_list[i].style.display='none';
			}		
		}
		
	});

	
	$('#employee_add').on('click',function(){
		var codename = document.getElementsByClassName("sawon-code");
		var input_employee = document.getElementById("input_employee").value;
		var sucess = 0;
		for(var f=0;f<codename.length;f++){
			if(codename[f].innerText == input_employee){
				sucess+=1;
			}			
		}
		if(sucess<1){
			$("#employee_add").attr("type","submit");
			$("#insert_form").attr("action","/controller/project/insert");
			$("#insert_form").attr("method","POST");
		} else {
			alert("????????? ???????????? ?????????.")
		}
	});
		
})
</script>

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
				<div class="sidebar-brand-text mx-3">ERP ????????????</div>
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
					class="fas fa-fw fa-dot-circle"></i> <span>?????? ??????</span>
			</a>
				<div id="collapseUtilities" class="collapse show"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item active" href="/controller/project/enroll">???????????? ??????</a> <a
							class="collapse-item" href="/controller/employee_info">???????????? ??????</a> <a
							class="collapse-item" href="/controller/dep/deplist">?????? ??????</a> <a class="collapse-item"
							href="/controller/project/jobs">?????? ??????</a>
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
				<div class="hr">
					<div class="hr-top">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/img/arrow.png"
								width="20px" height="20px"> ??????????????????
						</div>
						<div style="position: absolute; left: 800px; width: 250px;">
							<button id=sawon-add class="myButton" onclick="open_InsertEmp()">????????????</button>
							<button id=sawon-delete class="myButton" onclick="open_DeleteEmp()">????????????</button>
						</div>
					</div>
					<hr style="border: 1px solid black; margin: 0;">
					<div class="hr-bot">
						<div class="hr-left">
							<div class="hr-search hr-border">
										???????????? <input type="text" id="sawon-name"
										style="width: 150px;"> <button type="button" onclick="sawonsearch()">??????</button>
							</div>
							<div class="hr-border" style="height: 620px; overflow: scroll;">
								<table class="hr-table pop_table">
									<tr>
										<th>????????????</th>
										<th>?????????</th>					
									</tr>
									<c:forEach items="${list}" var="dto">
										<tr class="sawon${dto.employee_id}" onclick="focuss(this)">
											<td class="sawon-code">${dto.employee_id}</td>
											<td class="sawon-fullname">${dto.first_name} ${dto.last_name}</td>		
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					<c:forEach items="${list}" var="dto">
					<div class="hr-right sawoninfo${dto.employee_id}">
				<form class=sawon_data>
						<div class="hr-tab">
							<ul>
								<li class="active" tab-data="hr-tab1">????????????</li>
								<button id="sawon-submit" class="sawon-submit" type="submit">??????</button>
							</ul>						
						</div>
						<div class="hr-tab1 active">
							<div class="hr-personal">
								<div class="hr-border hr-sidetab">
									<img
										src="${pageContext.request.contextPath}/resources/img/arrow.png">????????????
								</div>
								<!--
                                    -->
								<!--
                                    -->
								<div class="hr-border hr-content" style="width: 620px;">

									<label>???</label> <input type="text" name="last_name" value="${dto.last_name}"><br/><br/>
									<label>??????</label><input type="text" name="first_name" value="${dto.first_name}"><br /><br/>
									<label>????????????</label> <input	type="text" name="phone_number" value="${dto.phone_number}"><br/><br/>
									<label>?????????</label> <input type="text" name="email" value="${dto.email}">

								</div>
							</div>
							<div class="hr-work">
								<div class="hr-border hr-sidetab">
									<img
										src="${pageContext.request.contextPath}/resources/img/arrow.png">????????????
								</div>
								<!--
                                    -->
								<div class="hr-border hr-content" style="width: 620px;">
									<label>????????????</label> <input type="text" style="width: 60px;" name="employee_id" value="${dto.employee_id}"> <br><br/>
									<label>???????????????</label> <input type="date" class=new_date name="hire_date" value="${dto.hire_date}"><br><br/>
									<label>??????</label> <input type="text" style="width: 60px;" class="dpt_id new_dpt" name="department_id" value="${dto.department_id}">
									<button id="hr-departmentBtn" type="button"
										onclick="open_department()"></button>
									<input type="text" style="width: 100px;" disabled class="dpt_name" value="${dto.department_name}"><br /><br/>
									<label>??????????????????</label> <input type="text" style="width: 60px;" name="manager_id" value="${dto.manager_id}"><br><br/>						
									<label>??????</label> <input type="text" style="width: 120px;" class="job_id new_job" name="job_id" value="${dto.job_id}">
									<button id="hr-rankBtn" type="button" onclick="open_job()"></button>
									<br /><br/>
									<label>??????</label> <input type="text" style="width: 120px;" name="salary" value="${dto.salary}">
									<!-- <button id="hr-paytypeBtn" type="button"></button> -->
									<br /><br/>
									<input type="date" class="old_date" style="display:none;" value="${dto.hire_date}" disabled="disabled"><br><br/>
									<input type="text" class="old_dpt" style="width: 60px; display:none;" value="${dto.department_id}" disabled="disabled" >
									<input type="text" style="width: 100px; display:none;" value="${dto.department_name}" disabled display="none"><br /><br/>
									<input type="text" style="width: 120px; display:none;" class="old_job" value="${dto.job_id}" disabled>
								</div>
							</div>
						</div>
						</form>
						</div>
						</c:forEach>
					</div>
<!-- ?????? ?????? -->
<div id=popup_background1>
<div id="department_popup">
    <div id="pop_title" class="dpt_pop_title">
        <img src="${pageContext.request.contextPath}/resources/img/arrow.png" style="width: 20px;"> ??????
        <button id="close_btn" onclick="close_department()"></button>
    </div>
   
    <div id="pop_search">
        <form>
            <select id="dpt_select">
                <option value="dpt_code">??????????????????</option>
                <option value="dpt_nam">???????????????</option>
            </select>
            <input type="text" id="dpt_research" style="width: 150px;"><br>
        </form>
    </div>
    <div id="pop_btn">
        <button class="pop_myButton" id="dpt_check">??????</button> 
        <button class="pop_myButton" onclick="InputDpt()">??????</button> 
        <button class="pop_myButton" onclick="close_department()">??????</button> 
    </div>
    <div id="pop_tableDiv">
        <table class="pop_table">
            <tr>
                <th style="width: 90px;">????????????</th>
                <th style="width: 170px;">?????????</th>
            </tr>
            <c:forEach items="${dpt}" var="dpt">
            <tr class=dpt_value onclick="focuss(this)">
                <td>${dpt.department_id}</td>
                <td>${dpt.department_name}</td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>
</div>
<!-- ?????? ?????? -->
<!-- ?????? ?????? -->
<div id=popup_background2>
<div id="pop_job">
	<div id="pop_title">
        <img src="${pageContext.request.contextPath}/resources/img/arrow.png" style="width: 20px;"> ??????
        <button id="close_btn" onclick="close_job()"></button>
    </div>
    <div id="pop_search">
        <form>
            <select id="rank_select">
                <option value="rank_code">??????</option>
                <option value="rank_name">??????</option>
            </select>
            <input type="text" id="rank_research" style="width: 150px;"><br>
        </form>
    </div>
    <div id="pop_btn">
        <button class="myButton" id="rank_check">??????</button> 
        <button class="myButton" onclick="InputJob()">??????</button> 
        <button class="myButton" onclick="close_job()">??????</button> 
    </div>
    <div id="pop_tableDiv">
        <table class="pop_table">
            <tr>
                <th style="width: 90px;">??????</th>
                <th style="width: 170px;">??????</th>
            </tr>
            <c:forEach items="${job}" var="job">
            <tr class="job_value" onclick="focuss(this)">
                <td>${job.job_id }</td>
                <td>${job.job_title }</td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>
</div>
<!-- ?????? ?????? -->
<!-- ?????? ?????? ?????? -->
<div id=popup_background3>
<div id=insert_employee>
    <div id="pop_title">
        <img src="${pageContext.request.contextPath}/resources/img/arrow.png" style="width: 20px;"> ????????????
        <button id="close_btn2" onclick="close_InsertEmp()"></button>
    </div>
    <form id="insert_form">
    <div id="pop_search2">
    	<table>        
        	<tr>
        	<td>????????????</td>
        	<td><input type="text" id="input_employee" name="employee_id"></td>
        	</tr>
        	<tr>
        	<td>???</td>
        	<td><input type="text" name="last_name"></td>
        	</tr>
        	<tr>
        	<td>??????</td>
        	<td><input type="text" name="first_name"></td>
        	</tr>
        	<tr>
        	<td>?????????</td>
        	<td><input type="text" name="email"></td>
        	</tr>
        	<tr>
        	<td>????????????</td>
        	<td><input type="text" name="phone_number"></td>
        	</tr>
        	<tr>
        	<td>?????????</td>
        	<td><input type="date" name="hire_date"></td>
        	</tr>
        	<tr>
        	<td>??????</td>
        	<td>
        	<select name="job_id">
        	<c:forEach items="${job}" var="job">
        	<option value="${job.job_id}">${job.job_id}</option>
        	</c:forEach>
        	</select>
        	</td>
        	</tr>
        	<tr>
        	<td>??????</td>
        	<td>
        	<select id="pop_dptValue" name="department_id">
        	<c:forEach items="${dpt}" var="dpt">
        	<option value="${dpt.department_id}">${dpt.department_id}:${dpt.department_name}</option>
        	</c:forEach>
        	</select>
        	</td>
        	</tr>
        	<tr>
        	<td>??????</td>
        	<td><input type="text" name="salary"></td>
        	</tr>    	  
        </table>
    </div>
    <div id="pop_btn">
        <button class="myButton" id="employee_add" type="button">??????</button>
        <button class="myButton" type="button" onclick="close_InsertEmp()">??????</button> 
    </div>
    </form>
</div>
</div>    
<!-- ?????? ?????? ?????? -->
<!-- ?????? ?????? ?????? -->
<div id=popup_background4>
<div id=delete_employee>
    <div id="pop_title">
        <img src="${pageContext.request.contextPath}/resources/img/arrow.png" style="width: 20px;"> ????????????
        <button id="close_btn2" onclick="close_DeleteEmp()"></button>
    </div>
    <form action="/controller/project/delete" method="post">
    <div id="pop_search2">
    	    <span>????????????</span> <input type="text" name="employee_id" id="delete_employeeid">
    	    <button id="delete_search" type="button">??????</button>
    	    <div id="delete_searchtable">
    	    <table>
    	    <tr>
    	    	<th>??????</th>
    	    	<th>????????????</th>
    	    </tr>
    	    <c:forEach items="${list}" var="dto">
    	    <tr class="delete_value1">
    	    	<td style="width:80px">${dto.employee_id}</td>
    	    	<td style="width:220px">${dto.first_name} ${dto.last_name}</td>
    	    </tr>
    	    </c:forEach>
    	    </table>
    	    </div>
    </div>
    <div id="pop_btn">
        <button class="myButton" type="submit">??????</button>
        <button class="myButton" type="button" onclick="close_DeleteEmp()">??????</button> 
    </div>
    </form>
</div>
</div>
<!-- ?????? ?????? ?????? -->    

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
<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>


<!-- jQUery UI -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>


<script>
/* ?????? ?????? ?????? */
$("#rank_check").on('click',function(){
	var rank_select = $('#rank_select').val();
	var job_list = document.getElementsByClassName('job_value');
	var rank_research = $('#rank_research').val();
	for(var i=0;i<job_list.length;i++){
		var rank_code = job_list[i].firstChild.nextSibling.innerText;
		var rank_name = job_list[i].lastChild.previousSibling.innerText;
		if(rank_select=="rank_code" && rank_code.includes(rank_research)){
			job_list[i].style.display='';
		} else if(rank_select=="rank_name" && rank_name.includes(rank_research)){
			job_list[i].style.display='';
		} else {
			job_list[i].style.display='none';
		}		
	}
});

$(".dpt_pop_title").on('mouseover',function(){
	$(".dpt_pop_title").on('mousedown',function(){
		$("#department_popup").draggable({
	        containment : 'parent' // ???????????? ?????? ??????
	    });
	});	
});
$(".dpt_pop_title").on('mouseout',function(){
	$("#department_popup").draggable({ disabled: true });
})
</script>
</body>

</html>
