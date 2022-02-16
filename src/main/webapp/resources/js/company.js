     
        function PopUp(){
            swal.fire({
                icon: "info",
                title: "필독!",
                text: "주의사항"
                })
        }
     
        function page(idx){
            if(idx==1){
                $(".main_box").css("display","block")
                $(".main_box2").css("display","none")
                $(".company_main_menu1").css("background-color","#c6d9e6")
                $(".company_main_menu1").css("font-weight", "bold")
                $(".company_main_menu2").css("background-color","#F3F5F9")
                $(".company_main_menu2").css("font-weight", "")
                
            }else if(idx==2){
                $(".main_box").css("display","none")
                $(".main_box2").css("display","block")
                $(".company_main_menu2").css("background-color","#c6d9e6")
                $(".company_main_menu2").css("font-weight", "bold")
                $(".company_main_menu1").css("background-color","#F3F5F9")
                $(".company_main_menu1").css("font-weight", "")
                
            }else{
                $(".main_box").css("display","block")
                $(".main_box2").css("dispaly","none")
                $(".company_main_menu1").css("background-color","#c6d9e6")
                $(".company_main_menu1").css("font-weight", "bold")
              
            }
        }
        //append 이용해서 테이블 동적 생성
        function company_insert(){
            var insert="";
            var trCut=$("#company_table tr").length+1000;
            insert+='<tr onclick="highlight(this,  '+"'#ff9f40'," +"'cc3333'"+')">';
            // insert+="<tr onclick=highlight(this,  '#c9cc99', 'cc3333')>";
            insert+="<td class=c_code>"+trCut+"</td>";
            insert+="<td><input type=text class=c_name></td>";
            insert+="<td class=c_sep><select><option>1.구분</option><option>2.미구분</option></select></td>";
            insert+="</tr>"
            $("#company_table").append(insert);
        }
      
        function company_delete(){

            //선택자 사용해서 테이블 row 삭제
            var trCut=$("#company_table tr").length;
            if(trCut>3){
                $("#company_table tr:last").remove();
            }else{
                return false;
            }
        }
          
           
        function kakaopost() {
            new daum.Postcode({ 
                oncomplete: function(data) {

                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
    
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
    
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("extraAddress").value = '';
                    }
                    // 예제를 참고하여 다양한 활용법을 확인해 보세요.
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("detailAddress").focus();
                }
        
        
       
             }).open();
        }
        function hpMove(){
            var move = "http://"+document.getElementById("hp_adress").value;
            window.open(move);
        }
        // function highlight(){
        //     var tab_count = $("#company_table tr").length
        //     $(tab_count).css("background-color","#ffd89a")
           
        // }
       var bcolor="#ffffff";
       var tcolor="#000000";
       function highlight(target, backColor, textColor){
           var tbody= target.parentNode;
           var trs=tbody.getElementsByTagName("tr");
           for(var i=1; i < trs.length;i++){
               if(trs[i]!=target){
                trs[i].style.backgroundColor=bcolor;
                trs[i].style.color=tcolor;
               }else{
                trs[i].style.backgroundColor=backColor;
                trs[i].style.color=textColor;
               }
               
           }

       }

       $("company_table tr").clcik(function(){

        $("company_table tr").css('background-color','yello')
       })
        
      


        