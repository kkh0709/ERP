function page(idx){
    if(idx==1){
        $(".main_box").css("display","block")
        $(".main_box2").css("display","none")
        $(".main_box3").css("display","none")
        $(".wp_main_menu1").css("background-color","#c6d9e6")
        $(".wp_main_menu1").css("font-weight", "bold")
        $(".wp_main_menu2").css("background-color","#F3F5F9")
        $(".wp_main_menu2").css("font-weight", "")
        $(".wp_main_menu3").css("background-color","#F3F5F9")
        $(".wp_main_menu3").css("font-weight", "")
        
    }else if(idx==2){
        $(".main_box").css("display","none")
        $(".main_box2").css("display","block")
        $(".main_box3").css("display","none")
        $(".wp_main_menu2").css("background-color","#c6d9e6")
        $(".wp_main_menu2").css("font-weight", "bold")
        $(".wp_main_menu1").css("background-color","#F3F5F9")
        $(".wp_main_menu1").css("font-weight", "")
        $(".wp_main_menu3").css("background-color","#F3F5F9")
        $(".wp_main_menu3").css("font-weight", "")
        
    }else if(idx==3){
        $(".main_box").css("display","none")
        $(".main_box2").css("display","none")
        $(".main_box3").css("display","block")
        $(".wp_main_menu2").css("background-color","#F3F5F9")
        $(".wp_main_menu2").css("font-weight", "")
        $(".wp_main_menu1").css("background-color","#F3F5F9")
        $(".wp_main_menu1").css("font-weight", "")
        $(".wp_main_menu3").css("background-color","#c6d9e6")
        $(".wp_main_menu3").css("font-weight", "bold")
    }
    else{
        $(".main_box").css("display","block")
        $(".main_box2").css("dispaly","none")
        $(".main_box3").css("display","none")
        $(".wp_main_menu1").css("background-color","#c6d9e6")
        $(".wp_main_menu1").css("font-weight", "bold")
      
    }
}
function Popup(){
    window.open("wp_popup.html","세무서코드","width=300, height=400, left=100, top=100")
}

function wp_insert(){
    var insert="";
    var trCut=$("#wp_table tr").length+1000;
    insert+='<tr onclick="highlight(this,  '+"'#ff9f40'," +"'cc3333'"+')">';
   
    insert+="<td><input type=checkbox class=check></td>"
    insert+="<td></td>";
    insert+="<td><input type=text></td>";
    
    insert+="</tr>"
    $("#wp_table").append(insert);
}

function wp_delete(){
    var check = document.getElementsByClassName("check");
    var run = true;
    var allcheck = document.getElementById("all_check")
    for(var i=check.length-1;i=>0;i--){
        if(check[i].checked==true){
            
            check[i].parentNode.parentNode.remove();
            allcheck.checked="";
        }
    }
}


function allcheck(){
    var check = document.getElementsByClassName("check")
    var allcheck = document.getElementById("all_check")
    for(var i = check.length-1;i=>0;i--){
        check[i].checked=allcheck.checked;
    }
}

