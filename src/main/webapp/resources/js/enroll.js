	// 탭 메뉴
	$(document).ready(function() {
		$('.hr-tab li').click(function() {
			var tab_id = $(this).attr('tab-data');
			console.log(tab_id);

			$('.hr-right > div').removeClass('active');
			$('.hr-tab li').removeClass('active');
			$(this).addClass('active');
			$("." + tab_id).addClass('active');
		})
	})
	
	//리스트 클릭시 상세정보 반영
	var test = '<c:forEach items="${list}" var="dto">${dto.employee_id},</c:forEach>';
	var testsplit = test.split(',');
	
	$(document).ready(function(){
		var checkSawon;
		for(let i=testsplit.length-1;i>=0;i--){
			$(".sawon"+testsplit[i]).on('click',function(){
				$(".sawoninfo"+testsplit[i]).css('display','inline-block');				
				console.log("[.sawon"+testsplit[i]+"]");
				console.log($(".sawoninfo"+testsplit[i]).css('display'));
				if($(".sawoninfo"+testsplit[i]).css('display')=='inline-block'){
					checkSawon=testsplit[i];
					console.log('checkSawon='+checkSawon);
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
			console.log(fullname);
			if(fullname.includes(sawonName)){
				console.log(sawonName);
			} else {
				codename[i].parentNode.style.display = "none";
				classname[i].parentNode.style.display = "none";
			}
		}
	}
	//popup
    function focuss(obj) {
        var i;
        var tabNum = obj.parentNode.children.length; //부모의 자식수. 즉, tbody의 tr의 갯수를 리턴합니다.
        for (i = 0; i < tabNum; i++)
            obj.parentNode.children[i].className = ''; 
        obj.className = 'activated'; //obj에는 클릭한 tr의 정보가 넘어옵니다.
    }
	
	//팝업 창 열고,닫기
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
	//팝업 창 값
	var job_value1 ='';
	var dpt_value1 ='';
	var dpt_value2 ='';
	$(function(){
		$(".job_value").click(function() {
		    job_value1 = $(this).children().first().text();
		    var job_value2 = $(this).children().last().text();
		    console.log(job_value1+","+job_value2);
		});
		$(".dpt_value").click(function() {
		    dpt_value1 = $(this).children().first().text();
		    dpt_value2 = $(this).children().last().text();
		    console.log(dpt_value1+","+dpt_value2);
		});
	})
	function InputJob(){
		var job_id = document.getElementsByClassName("job_id");

		console.log(job_value1);
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
	console.log(dpt_value1);
	console.log(dpt_value2);
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
/* 클릭시 제출 */
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
				console.log(new_date[i].value+","+new_dpt[i].value+","+old_date[i].value+","+old_dpt[i].value);
				if(new_dpt[i].value==old_dpt[i].value && new_job[i].value==old_job[i].value){
					$(".sawon_data").attr("action","/controller/project/update2");
					$(".sawon_data").attr("method","POST");
					console.log('다른 제출')
				} else if(new_date[i].value==old_date[i].value && (new_dpt[i].value==old_dpt[i].value || new_job[i].value==old_job[i].value)){
					alert("부서나 직급 변경시 직무시작일도 변경해야합니다.")	
				} else {
					$(".sawon_data").attr("action","/controller/project/update");
					$(".sawon_data").attr("method","POST");
				}
			}
		}
	})
	/* 삭제목록에서 이름 클릭시 값 넣기 */
	$(".delete_value1").on('click',function(){
		$(".delete_value1").css('background-color','white');
		$(this).css('background-color','rgb(255, 208, 119)');
		var DV1 = $(this).children().first().text();
		var DV2 = $(this).children().last().text()
		console.log(DV1);
		console.log(DV2);
		$('#delete_employeeid').val(DV1);
	});
	/*삭제목록 사원코드 검색 */
	$('#delete_search').on('click',function(){
		var DC = $('#delete_employeeid').val();
		var FClist = document.getElementsByClassName('delete_value1');
		console.log(DC)
		for(var i=0;i<FClist.length;i++){
			var OC = FClist[i].firstChild.nextSibling.innerText;
			if(OC.includes(DC)){
				FClist[i].style.display='';
			} else {
				FClist[i].style.display='none';
			}
		}
	});
	/*부서 조회 검색 */
	$("#dpt_check").on('click',function(){
		var dpt_check = $('#dpt_select').val();
		var dpt_list = document.getElementsByClassName('dpt_value')
		var dpt_research = $('#dpt_research').val();
		console.log(dpt_research);
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
	/* 직급 조회 검색 */
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
	$('#employee_add').on('click',function(){
		var codename = document.getElementsByClassName("sawon-code");
		var input_employee = document.getElementById("input_employee").value;
		var sucess = 0;
		for(var f=0;f<codename.length;f++){
			if(codename[f].innerText == input_employee){
				sucess+=1;
			}			
		}
		console.log(sucess);
		if(sucess<1){
			$("#employee_add").attr("type","submit");
			$("#insert_form").attr("action","/controller/project/insert");
			$("#insert_form").attr("method","POST");
		} else {
			alert("중복된 사원코드 입니다.")
		}
	});
		
})