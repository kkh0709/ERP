$(document)
		.ready(
				function() {
					/* popup 창 검색 조건 */
					var serchSelect = $(".serch>select").val();
					/* pop-up 시 부모의 자식 요소 중 select 선택 */
					var repResult;
					/* pop-up checkbox table 선택 */
					var checkTable = $(".table_area>table>tbody>tr>td:nth-child(3n+1)")
					var checkBox = true;		
				
					/* popup 초기화 */
					function popInit() {
						/* crud popup 제목영역 */
						$("#dhName").css({"display" : "none"});
						$("#dhinsert").css({"display" : "none"});	
						$("#dhdelete").css({"display" : "none"});
						$("#dhupdate").css({"display" : "none"});
						
						/* crud popup 내용영역 */
						$(".pop_up_dh").css({"display":"none"});
						$(".pop_up_dhinsert").css({"display":"none"});
						$(".pop_up_dhdelete").css({"display":"none"});
						$(".pop_up_dhupdate").css({"display":"none"});
						
						/* 팝업 영역 보이기 */
						$(".pop_up_main").css({"display":"inline-block"});	
						$(".pop_up").css({
							"display" : "block"
						});
						
						/* 제목 영역 초기화 */
						$(".pop_up_titleName").css({
							"display" : "none"
						});
						
						/* 테이블 영역 초기화 */
						$(".table_area").css({
							"display" : "none"
						});
						/* 팝업 검색창 값 초기화 */
						$(".serch>input").val('');
						/* 팝업 검색창 포커스 */
						$(".serch>input").focus();
						/* 테이블 초기화 */
						$(".table_area>table>tbody>tr").show();
						/* 테이블 첫열 css */
						$(".table_area>table>tbody>tr").css({
							"color" : "black",
							"background" : "#EDF0F5"
						});
						$(".table_area>table>tbody>tr:nth-child(1)").css({
							"color" : "red",
							"background" : "orange"
						});
						/* pop up 창 drag */
						$(".pop_up>div").draggable({
							containment : [ 230, 0, 1200, 380 ],
							handle : '#pop_up_title'
						});
						/* 검색 조건 초기화 */
						$(".serch>select").val("검색");
						/* check box 초기화 */
						checkTable.find('input:checked').prop("checked", false);
						/* check 전체 선택 이미지 초기화 */
						$(".table_area>table>thead>tr>td>img").attr("src",
								"/controller/resources/img/check.JPG");
						checkBox = true;
					}
					/* fail popup 초기화 */
					function failPopupInit() {
						$("#fail").css({
							"display" : "block"
						});
						$("#fail>div>div>img").attr("src",
								"/controller/resources/img/codeError.JPG");
						$("#failConfirm").focus();
					}
					/* fail popup 확인버튼 */
					$("#failConfirm").on("click", function() {
						$("#fail").css({
							"display" : "none"
						});
						if (repResult != null) {
							repResult.parent().find("[type='text']").val("");
							repResult.parent().find("[type='text']").focus();
						}
					})
					
					if(dh!=""){
						popInit();
						$("#dhName").css({"display" : "inline-block"});
						$(".pop_up_main").css({"display":"none"});
						$(".pop_up_dh").css({"display":"inline-block"});
					}
								
					switch(flag){
					case "1" :
						popInit();
						$("#dhinsert").css({"display" : "inline-block"});
						$(".pop_up_main").css({"display":"none"});
						$(".pop_up_dhinsert").css({"display":"inline-block"});
						$(".departmentName").change(function(){
							var departIndex = this.selectedIndex;
							var departId = $(".departmentId").find("option");
							var selectId = departId.eq(departIndex).val();
							$(".departmentId").val(selectId);	
						})
						$(".jobTitle").change(function(){
							var jobIndex = this.selectedIndex;
							var jobId = $(".jobId").find("option");
							var selectId = jobId.eq(jobIndex).val();
							$(".jobId").val(selectId);	
						})
						
						$(".departSave").on("click",function(){
							$("#employee_id").removeAttr("disabled");
							$(".jobId").removeAttr("disabled");
							$(".departmentId").removeAttr("disabled");
						})
						break;
						
					case "2" :
						popInit();
						$("#dhdelete").css({"display" : "inline-block"});
						$(".pop_up_main").css({"display":"none"});
						$(".pop_up_dhdelete").css({"display":"inline-block"});
						$(".jhpara").attr("disabled",true);	
																		
						$(".departDelete").on("click",function(){
							$(".departDelete").attr("type","submit");
							var td = $(".deleteTable>tbody>tr>td:nth-child(6n+1)");
							var checkbox = td.find("input:checked");						
							if(checkbox.length>=1){								
								checkbox.each(function(i){
									var tr = checkbox.parent().parent().eq(i);
									var input = tr.children().find(".jhpara");
									input.attr("disabled",false);
								});
							}else if(checkbox.length<1){
								$(".departDelete").attr("type","button");
							}
							
						});
						
						$(".deleteTable>thead>tr>td>img").on(
								"click",
								function() {
									console.log("1")
									if (checkBox) {
										$(this).attr('src',
												"/controller/resources/img/checked.JPG");
										$(this).parent().parent().parent().parent()
												.find(".deleteCheck")
												.prop("checked", true);
										checkBox = false;
									} else {
										$(this).attr('src',
												"/controller/resources/img/check.JPG");
										$(this).parent().parent().parent().parent()
												.find(".deleteCheck").prop("checked",
														false);
										checkBox = true;
									}
						});
						break;
						
					case "3" :
						popInit();
						$("#dhupdate").css({"display" : "inline-block"});
						$(".pop_up_main").css({"display":"none"});
						$(".pop_up_dhupdate").css({"display":"inline-block"});
						
						$(".departupdate").attr("type","button");
						
						/* job id select 초기화 */
						$(".upJobId").each(function(index){
							var leng = index + 1;							
							$("#upJobId"+leng).val( $("#initJobId"+leng).val());
						});
						
						/* 부서명  select 초기화 */
						$(".selectDepartName").each(function(index){
							var leng = index + 1;
							$("#selectDepartName"+leng).val($("#initdepartname"+leng).val());
							$("#selectDepartName"+leng).change(function(){
								var departIndex = this.selectedIndex;
								var departId = $("#upDepartmentId"+leng).find("option");
								var selectId = departId.eq(departIndex).val();
								$("#upDepartmentId"+leng).val(selectId);								
							})
						});
						
						
						
						/*항목 변경 시 업데이트 항목 추가*/	
						$(".updateChange").on("change",function(){
							var updateTr = $(this).parent().parent();
							updateTr.children().find("#upEmployeeId").attr("name","employee_id");
							updateTr.children().find(".upDepartmentId").attr("name","department_id");
							updateTr.children().find(".upJobId").attr("name","job_id");
							updateTr.children().find("#upStartDate").attr("name","start_date");
							updateTr.children().find("#upEndDate").attr("name","end_date");
							$(".departupdate").attr("type","submit");
						})
												
						break;	
					}
					
					if(msg==="success"){
						alert("작업 완료 되었습니다.")
					}
					/* 조회버튼 클릭 */
					$("[src='img/search.PNG']").on(
							"click",
							function() {
								failPopupInit();
								$("#fail img").attr("src",
										"/controller/resources/img/serchFail.jpg");
							})
					/* F9(조회) 버튼 클릭 */
					$(window)
							.on(
									"keyup",
									function(e) {
										if (e.keyCode == 120) {
											failPopupInit();
											$("#fail img")
													.attr("src",
															"/controller/resources/img/serchFail.jpg");
										}
									})

					/* popup 창 취소 버튼 */
					$("#cancel").on("click", function() {
						$(".pop_up").css({
							"display" : "none"
						});
					})
					/* popup 창 확인 버튼 */
					$("#confirm")
							.on(
									"click",
									function() {
										if (checkTable.find('input:checked').length > 0) {

											var checkbox = $("input[type='checkbox']:checked");

											repResult.find("option").remove();
											
											checkbox.each(function(i) {
												var tr = checkbox.parent()
														.parent().eq(i);
												var td = tr.children();
												code = td.eq(1).text();
												detailsName = td.eq(2).text();
												// console.log(code);
												// console.log(detailsName);
												repResult.append('<option>'
														+ code + " "
														+ detailsName
														+ '</option>');
											})
											if (checkTable
													.find('input:checked').length == 1) {
												repResult.val(code + " "
														+ detailsName);
											}
										} else {
											repResult.find("option").remove();
											repResult
													.append('<option></option>')
										}
										repResult.parent().find("input").val(
												repResult.val());
										$(".pop_up").css({
											"display" : "none"
										});
									})

					/* popup table 영역 클릭 css */
					checkTable.on("click", function() {
						if (checkBox) {
							$(this).find('input').prop("checked", true);
							checkBox = false;
						} else {
							$(this).find('input').prop("checked", false);
							checkBox = true;
						}
					})

					$('.table_area>table>tbody>tr>td').on("click", function() {
						$(".table_area>table>tbody>tr").css({
							"color" : "black",
							"background" : "#EDF0F5"
						});
						$(this).parent().css({
							"color" : "red",
							"background" : "orange"
						});
					})

					/* poput table double click 기능 */
					$('.table_area>table>tbody>tr>td').not(checkTable).on(
							"dblclick",
							function() {
								var tr = $(this).parent();
								var td = tr.children();
								code = td.eq(1).text();
								detailsName = td.eq(2).text();
								repResult.find("option").remove();								
								repResult.append('<option>' + code + " "
										+ detailsName + '</option>');
								repResult.val(code + " " + detailsName);
								repResult.parent().find("input").val(
										repResult.val());
								$(".pop_up").css({
									"display" : "none"
								});
							})

					/* check box 전체 선택 */
					$(".table_area>table>thead>tr>td>img").on(
							"click",
							function() {
								if (checkBox) {
									$(this).attr('src',
											"/controller/resources/img/checked.JPG");
									$(this).parent().parent().parent().parent()
											.find("input")
											.prop("checked", true);
									checkBox = false;
								} else {
									$(this).attr('src',
											"/controller/resources/img/check.JPG");
									$(this).parent().parent().parent().parent()
											.find("input").prop("checked",
													false);
									checkBox = true;
								}
							})
					/* pop-up 창 close */
					$("#pop_up_close").on("click", function() {
						$(".pop_up").css({
							"display" : "none"
						});
					})

					/* pop-up창 검색 조건 선택 */
					$(".serch>select").change(function() {
						serchSelect = $(".serch>select").val();
					})

					/* pop-up창 테이블 검색 조건이 빠른이동일 때 이벤트 */
					// keypress 시 한글 인식 안됨
					$("#keyword")
							.on(
									"keyup",
									function(e) {
										var serchValue = $(this).val()
												.toUpperCase();
										if (serchSelect === "빠른이동") {
											if (serchValue != "") {
												var temp1 = $(".table_area>table>tbody>tr>td:nth-child(3n+3):contains('"
														+ serchValue + "')");
												var temp2 = $(".table_area>table>tbody>tr>td:nth-child(3n+2):contains('"
														+ serchValue + "')");
											}
											/* 검색 결과가 하나 일때만 결과를 반영 */
											if (temp1 != undefined) {
												if (temp1.length == 1) {
													$(
															".table_area>table>tbody>tr")
															.css(
																	{
																		"color" : "black",
																		"background" : "#EDF0F5"
																	});
													$(temp1).parent().css({
														"color" : "red",
														"background" : "orange"
													});
												}
											}
											if (temp2 != undefined) {
												if (temp2.length == 1) {
													$(
															".table_area>table>tbody>tr")
															.css(
																	{
																		"color" : "black",
																		"background" : "#EDF0F5"
																	});
													$(temp2).parent().css({
														"color" : "red",
														"background" : "orange"
													});
												}
											}
										} else if (serchSelect === "검색") {
											/* ENTER KEY 누름시 검색 */
											if (e.keyCode == 13
													|| e.keyCode == 9) {
												serchValue = $(this).val()
														.toUpperCase();
												if (serchValue != "") {
													var temp1 = $(".table_area>table>tbody>tr>td:nth-child(3n+3):contains('"
															+ serchValue + "')");
													var temp2 = $(".table_area>table>tbody>tr>td:nth-child(3n+2):contains('"
															+ serchValue + "')");
												}
												$(".table_area>table>tbody>tr")
														.hide();
												$(temp1).parent().show()
												$(temp2).parent().show()
												if (temp1.length == 1
														|| temp2.length == 1) {
													$(temp1).parent().css({
														"color" : "red",
														"background" : "orange"
													});
													$(temp2).parent().css({
														"color" : "red",
														"background" : "orange"
													});
												}
											}
										}
										/* pop-up 조회버튼 */
										$("#reference")
												.click(
														function() {
															$(
																	".table_area>table>tbody>tr")
																	.hide();
															var temp1 = $(".table_area>table>tbody>tr>td:nth-child(3n+3):contains('"
																	+ serchValue
																	+ "')");
															var temp2 = $(".table_area>table>tbody>tr>td:nth-child(3n+2):contains('"
																	+ serchValue
																	+ "')");
															$(temp1).parent()
																	.show()
															$(temp2).parent()
																	.show()
															if (temp1.length == 1
																	|| temp2.length == 1) {
																$(temp1)
																		.parent()
																		.css(
																				{
																					"color" : "red",
																					"background" : "orange"
																				});
																$(temp2)
																		.parent()
																		.css(
																				{
																					"color" : "red",
																					"background" : "orange"
																				});
															}
														})
									})

					/* 부서 버튼 클릭 */
					$(".con img").on("click", function() {
						repResult = $(this).parent().find("#condition2");
						popInit();
						$("#departmentName").css({
							"display" : "inline-block"
						});
						$("#departmentTable").css({
							"display" : "block"
						});
					})
					/* 부서 select 변경 시 text에 값 변경 */
					$("#condition2").on("change", function() {
						$("#con1").val($("#condition2").val())
					})

					/* 사원구분 버튼 클릭 */
					$(".tenure img").on("click", function() {
						repResult = $(this).parent().find("select");
						popInit();
						$("#empCodeName").css({
							"display" : "inline-block"
						});
						$("#empTable").css({
							"display" : "block"
						});
					})
					/* 재직구분 select 변경 시 text에 값 변경 */
					$("#condition3").on("change", function() {
						$("#con2").val($("#condition3").val())
					})

					/* select 키 옵션 */
					$(".textselect")
							.on(
									"keyup",
									function(e) {
										var id = $(this).attr("id");
										var value = $(this).val().toUpperCase();
										/* f2 key option */
										if (e.keyCode == 113) {
											switch (id) {
											case "con1":
												repResult = $(this).parent()
														.find("#condition2");
												popInit();
												$("#departmentName").css({
													"display" : "inline-block"
												});
												$("#departmentTable").css({
													"display" : "block"
												});
												break;
											case "con2":
												repResult = $(this).parent()
														.find("select");
												popInit();
												$("#empCodeName").css({
													"display" : "inline-block"
												});
												$("#empTable").css({
													"display" : "block"
												});
												break;
											}
										}
										/* enter key option */
										if (e.keyCode == 13) {
											switch (id) {
											case "con1":
												repResult = $(this).parent()
														.find("select");
												popupTableTr = $("#departmentTable>table>tbody>tr");
												break;
											break;
										case "con2":
											repResult = $(this).parent().find(
													"select");
											popupTableTr = $("#empTable>table>tbody>tr");
											break;
										}
										if (value != "") {
											var temp1 = popupTableTr
													.find("td:nth-child(3n+3):contains('"
															+ value + "')");
											var temp2 = popupTableTr
													.find("td:nth-child(3n+2):contains('"
															+ value + "')");
											if (temp1.length >= 1) {
												repResult.find("option")
														.remove();												
												temp1.each(function(i) {
													tr = temp1.parent().eq(i);
													td = tr.children();
													code = td.eq(1).text();
													detailsName = td.eq(2)
															.text();
													repResult.append('<option>'
															+ code + " "
															+ detailsName
															+ '</option>');
													repResult.val(code + " "
															+ detailsName);
												})
												repResult.parent()
														.find("input")
														.val(repResult.val())
											}
											if (temp2.length >= 1) {
												tr = temp2.parent();
												td = tr.children();
												code = td.eq(1).text();
												detailsName = td.eq(2).text();
												repResult.find("option")
														.remove();												
												repResult.append('<option>'
														+ code + " "
														+ detailsName
														+ '</option>');
												repResult.val(code + " "
														+ detailsName);
												repResult.parent()
														.find("input")
														.val(repResult.val())
											}
											if (temp1.length < 1
													&& temp2.length < 1) {
												failPopupInit();
											}
										}
									}
									/* backspace key option */
									if (e.keyCode == 8) {
										switch (id) {
										case "con1":
											repResult = $(this).parent().find(
													"#condition2");
											break;
										case "con2":
											repResult = $(this).parent().find(
													"select");
											break;
										}
										if (value == "") {
											repResult.find("option").remove();
											repResult
													.append('<option></option>');
										}
									}
								})
							/* 부서이력 조회 버튼 */	
							$(".dh").on("click",function(){
								var empId = $(this).attr("id");
								$("#dh").attr("action","/controller/employee_info?employee_id="+empId)								
							});
							
							/* 부서이력 입력 버튼 */	
							$(".create").on("click",function(){
								var empId = $(this).attr("id");
								$("#dh").attr("action","/controller/dhcreate?employee_id="+empId);	
								$("#dh").attr("method","POST");
							});
							
							/* 부서이력 삭제 버튼 */	
							$(".delete").on("click",function(){
								var empId = $(this).attr("id");
								$("#dh").attr("action","/controller/dhdelete?employee_id="+empId);
								$("#dh").attr("method","POST");
							});
							
							/* 부서이력 수정 버튼 */	
							$(".update").on("click",function(){
								var empId = $(this).attr("id");
								$("#dh").attr("action","/controller/dhupdate?employee_id="+empId);
								$("#dh").attr("method","POST");
							});
							
							/* 조건별 table 내용 조회*/
							$(".conSer").on("click",function(){
								$("#sub_2>form>table>tbody>tr").hide();
								var con1 = $("#con1").val()
								var con2 =$("#con2").val()
								var condition1 = con1.substring(con1.indexOf(" ")+1);
								var condition2 = con2.substring(con2.indexOf(" ")+1);								
								var departmentTd = $("#sub_2>form>table>tbody>tr>td:nth-child(9n+8):contains('"
										+ condition1
										+ "')");
								var employeeTd = $("#sub_2>form>table>tbody>tr>td:nth-child(9n+3):contains('"
										+ condition2
										+ "')");
								if(condition1!=""){
									if(condition2!=""){
										var text=$(employeeTd).parent().children().eq(7).text();
										if(text===condition1){
											$(employeeTd).parent().show();
										}else{
											alert("해당조건에 맞는 내용이 없습니다.");
										}
									}else{
										$(departmentTd).parent().show();
									}
								}else{
									$(employeeTd).parent().show();
								}	
							})
							
				})