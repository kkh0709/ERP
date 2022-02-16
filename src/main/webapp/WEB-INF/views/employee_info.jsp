<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<jsp:include page="/WEB-INF/views/include/header.jsp" />

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/empInfoStatus.css" />
<!-- jQUery Latest Ver -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- javascript -->
<script src="${pageContext.request.contextPath}/resources/js/empInfoStatus.js"></script>
<script>
	var dh = '${dh}';
	var flag = '${flag}';
	var msg = '${msg}';
</script>
<div class="container-fluid">
	<div id="empInfoStatus" class="init">
		<!-- popup창 영역 -->
		<div class="init pop_up">
			<div class="init">
				<div id="pop_up_title" class="init">
					<div class="init">
						<span id="pop_up_titleA"> <i
							class="fas fa-caret-right fa-2x"></i>
						</span> 
						<span id="departmentName" class="pop_up_titleName"> 부서코드도움</span> 
						<span id="empCodeName" class="pop_up_titleName"> 사원코드도움 </span> 
						<span id="dhName" class="pop_up_titleName"> 부서변경이력 </span>
						<span id="dhinsert" class="pop_up_titleName"> 부서변경이력추가 </span>
						<span id="dhdelete" class="pop_up_titleName"> 부서변경이력삭제 </span>
						<span id="dhupdate" class="pop_up_titleName"> 부서변경이력수정 </span>
					</div>
					<span id="pop_up_close"> <i
						class="fas fa-window-close fa-1x"></i>
					</span>
				</div>
				
				<!-- 부서이력 popup -->
				<div class="pop_up_dh">
					<div class="dh_name">
						<span> 이름 : ${employeesInfoDto.fullname } </span>
					</div>
					<div class="popup_dh_main">
						<table class="departmentHistory">
							<thead>
								<tr>
									<td>부서명</td>
									<td>직책ID</td>
									<td>시작일</td>
									<td>종료일</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${dh }" var="dh" varStatus="status">
									<c:set var="enddate" value="${dh.end_date }" />
									<c:set var="index" value="${status.index }" />
									<tr>
										<td>${dh.department_name }</td>
										<td>${dh.job_id }</td>
										<td><fmt:formatDate value="${dh.start_date }"
												pattern="yyyy-MM-dd" /></td>
										<td><fmt:formatDate value="${dh.end_date }"
												pattern="yyyy-MM-dd" /></td>
									</tr>
								</c:forEach>
								<tr>
									<td>${employeesInfoDto.department_name }</td>
									<td>${employeesInfoDto.job_id }</td>
									<td><c:if test="${empty index }">
											<fmt:formatDate value="${employeesInfoDto.hire_date }"
												pattern="yyyy-MM-dd" />
										</c:if> <c:if test="${not empty index }">
											<fmt:formatDate value="${enddate }" pattern="yyyy-MM-dd" />
										</c:if></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- insert pop up -->
				<div class="pop_up_dhinsert">
					<div class="dhinsert_name">
						<span> 이름 : ${employeesInfoDto.fullname } </span>
					</div>
					<div class="popup_dhinsert_main">
						<form action="/controller/dhcreateSuccess" method="post">
							<table id="dhinsertTable">
								<tr>
									<td style="width:80px"> 사원번호 </td>
									<td> <input type="text" id="employee_id" name="employee_id" value="${employeesInfoDto.employee_id }" disabled></td>
								</tr>
								<tr>
									<td> 시작일자 </td>
									<td> <input type="date" name="start_date"></td>
								</tr>
								<tr>
									<td> 종료일자 </td>
									<td> <input type="date" name="end_date"></td>
								</tr>
								<tr>
									<td> 직책ID </td>
									<td>
										<select class="jobTitle">
											<c:forEach items="${jobs }" var="job">
												<option>${job.job_title }</option>
											</c:forEach>
										</select>
										<select class="jobId" name="job_id" disabled>
											<c:forEach items="${jobs }" var="job">
												<option>${job.job_id }</option>
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td> 부서코드 </td>
									<td> 
										<select class="departmentName">
											<c:forEach items="${departments }" var="depart">
												<option>${depart.department_name }</option>
											</c:forEach>
										</select>
										<select class="departmentId" name="department_id" disabled>
											<c:forEach items="${departments }" var="depart">
												<option>${depart.department_id }</option>
											</c:forEach>
										</select>
									</td>
								</tr>		
							</table>
							<button type = "submit" class="departSave butt">추가</button>						
						</form>
					</div>
				</div>
				<!-- delete pop up -->
				<div class="pop_up_dhdelete">
					<div class="dhdelete_name">
						<span> 이름 : ${employeesInfoDto.fullname } </span>
					</div>
					<div class="popup_dh_main">
						<form action="/controller/dhdeleteSuccess" method="post">
							<table class="departmentHistory deleteTable">
								<thead>
									<tr>
										<td><img src="${pageContext.request.contextPath}/resources/img/check.JPG"></td>
										<td>사원ID</td>
										<td>부서명</td>
										<td>직책ID</td>
										<td>시작일</td>
										<td>종료일</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${dh }" var="dh" varStatus="status">
										<c:set var="enddate" value="${dh.end_date }" />
										<c:set var="index" value="${status.index }" />
										<tr>
											<td><input type="checkbox" class="deleteCheck"></td>
											<td><input class="jhpara" type="hidden" name="employee_id" value="${dh.employee_id }"/>${dh.employee_id }</td>
											<td>${dh.department_name }</td>
											<td><input class="jhpara" type="hidden" name="job_id" value="${dh.job_id }"/>${dh.job_id }</td>
											<td><fmt:formatDate value="${dh.start_date }" pattern="yyyy-MM-dd" /></td>
											<td><fmt:formatDate value="${dh.end_date }"	pattern="yyyy-MM-dd" /></td>
										</tr>
									</c:forEach>
									<tr>
										<td></td>
										<td>${employeesInfoDto.employee_id }</td>
										<td>${employeesInfoDto.department_name }</td>
										<td>${employeesInfoDto.job_id }</td>
										<td><c:if test="${empty index }">
												<fmt:formatDate value="${employeesInfoDto.hire_date }"
													pattern="yyyy-MM-dd" />
											</c:if> <c:if test="${not empty index }">
												<fmt:formatDate value="${enddate }" pattern="yyyy-MM-dd" />
											</c:if></td>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									</tr>
								</tbody>
							</table>
							<button type="submit" class="departDelete butt">삭제</button>
						</form>
					</div>
				</div>
				<!-- update pop up -->
				<div class="pop_up_dhupdate">
					<div class="dhupdate_name">
						<span> 이름 : ${employeesInfoDto.fullname } </span>
					</div>
					<div class="popup_dh_main">
						<form action="/controller/dhupdateSuccess" method="post">
							<table class="departmentHistory">
								<thead>
									<tr>						
										<td>사원ID</td>
										<td>부서명</td>
										<td>직책ID</td>
										<td>시작일</td>
										<td>종료일</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${dh }" var="dh" varStatus="status">
										<c:set var="enddate" value="${dh.end_date }" />
										<c:set var="index" value="${status.index }" />
										<tr>								
											<td>
												<input type="text" id="upEmployeeId" value="${dh.employee_id }" hidden>
												${dh.employee_id }
											</td>
											<td>
												<input type="text" id="initdepartname${status.count }" value="${dh.department_name }" hidden>
												<select id="selectDepartName${status.count }" class="updateChange selectDepartName">
													<c:forEach items="${departments }" var="depart">
														<option>${depart.department_name }</option>
													</c:forEach>
												</select>
												<select id="upDepartmentId${status.count }" class="upDepartmentId" hidden >
													<c:forEach items="${departments }" var="depart">
														<option>${depart.department_id }</option>
													</c:forEach>
												</select>	
											</td>
											<td>
												<input type="text" id="initJobId${status.count }" value="${dh.job_id }" hidden>										
												<select id="upJobId${status.count }" class="updateChange upJobId" >												
													<c:forEach items="${jobs }" var="job">
														<option>${job.job_id }</option>
													</c:forEach>
												</select>												
											</td>
											<td>
												<input type="date" id="upStartDate"class="updateChange" value="<fmt:formatDate value="${dh.start_date }" pattern="yyyy-MM-dd" />" hidden>
												<fmt:formatDate value="${dh.start_date }" pattern="yyyy-MM-dd" />
											</td>	
											<td>
												<input type="date" id="upEndDate" class="updateChange" value="<fmt:formatDate value="${dh.end_date }"	pattern="yyyy-MM-dd" />">												
											</td>
										</tr>
									</c:forEach>
									<tr>
										<td>${employeesInfoDto.employee_id }</td>
										<td>${employeesInfoDto.department_name }</td>
										<td>${employeesInfoDto.job_id }</td>
										<td><c:if test="${empty index }">
												<fmt:formatDate value="${employeesInfoDto.hire_date }"
													pattern="yyyy-MM-dd" />
											</c:if> <c:if test="${not empty index }">
												<fmt:formatDate value="${enddate }" pattern="yyyy-MM-dd" />
											</c:if></td>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									</tr>
								</tbody>
							</table>
							<button type="button" class="departupdate butt">수정</button>
						</form>
					</div>
				</div>
				
				<div class="init pop_up_main">
					<div class="init serch">
						<select>
							<option>검색</option>
							<option>빠른이동</option>
						</select> <input type="text" id="keyword">
					</div>
					<div class="init btn_area">
						<button type="button" id="reference" class="butt">조회</button>
						<button type="button" id="confirm" class="butt">확인</button>
						<button type="button" id="cancel" class="butt">취소</button>
					</div>
					<!-- 부서 테이블 -->
					<div class="init table_area" id="departmentTable">
						<table class="mainTable">
							<thead>
								<tr>
									<td><img src="${pageContext.request.contextPath}/resources/img/check.JPG"></td>
									<td>부서코드</td>
									<td>부서명</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="departments" items="${departments }">
									<tr>
										<td><input type="checkbox"></td>
										<td>${departments.department_id}</td>
										<td>${fn:toUpperCase(departments.department_name) }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- 사원 테이블 -->
					<div class="init table_area" id="empTable">
						<table>
							<thead>
								<tr>
									<td><img src="${pageContext.request.contextPath}/resources/img/check.JPG"></td>
									<td>사원코드</td>
									<td>사원명</td>
								</tr>
							</thead>							
							<tbody>
								<c:forEach var="empList" items="${employees }">
									<tr>
										<td><input type="checkbox"></td>
										<td>${empList.employee_id }</td>
										<td>${fn:toUpperCase(empList.fullname) }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- 조회 data 없음, 코드 입력 오류 popup -->
		<div id="fail" class="init">
			<div>
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/codeError.JPG">
				</div>
				<button type="button" id="failConfirm" class="butt">확인</button>
			</div>
		</div>
		<!-- 전체 영역 -->
		<div id="title" class="init">
			<img src="${pageContext.request.contextPath}/resources/img/title.JPG" class="init"> <B>사원정보현황</B>
		</div>
		<div class="init" id="condition_background">
			<div class="init" id="condition">
				<div class="init con">
					부서명 <input type=text id="con1" class="textselect"
						spellcheck="false"> <select id="condition2">
						<option></option>
					</select> <img src="${pageContext.request.contextPath}/resources/img/lookup.JPG" class="vermi">
				</div>
				<div class="init tenure">
					사원명 <input type=text id="con2" class="textselect"
						spellcheck="false"> <select id="condition3">
						<option></option>
					</select> <img src="${pageContext.request.contextPath}/resources/img/lookup.JPG" class="vermi">
				</div>
				<div class="init conSerch">
					<button type="button" class="conSer butto">
						<span>조건 조회</span>
					</button>
				</div>
			</div>
		</div>
		<!-- 사원정보 영역 -->
		<div class="init main">
			<div id="sub_2" class="init">
				<form action="" method="post" id="dh">
					<table class="init mainTable">
						<thead>
							<tr class="init">
								<td class="init">NO</td>								
								<td class="init">사원코드</td>
								<td class="init">사원명</td>
								<td class="init">이메일</td>
								<td class="init">휴대전화</td>
								<td class="init">입사일</td>
								<td class="init">직책ID</td>
								<td class="init">부서명</td>
								<td class="init">부서변경이력</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${employees }" var="empList" varStatus="status">
								<tr>
									<td>${status.count }</td>									
									<td>${empList.employee_id }</td>
									<td>${fn:toUpperCase(empList.fullname) }</td>
									<td>${empList.email }</td>
									<td>${empList.phone_number }</td>
									<td><fmt:formatDate value="${empList.hire_date }"
											pattern="yyyy-MM-dd" /></td>
									<td>${empList.job_id }</td>
									<td>${fn:toUpperCase(empList.department_name) }</td>
									<td>
										<button id="${empList.employee_id}" class="dh butt">조회</button>
										<button id="${empList.employee_id}" class="create butt">입력</button>
										<button id="${empList.employee_id}" class="delete butt">삭제</button>
										<button id="${empList.employee_id}" class="update butt">수정</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- /.container-fluid -->

<jsp:include page="/WEB-INF/views/include/footer.jsp" />