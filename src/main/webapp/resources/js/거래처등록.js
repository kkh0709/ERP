$(function(){
    $("#Vrbutton2").click(
        function() {
        if($("#VRup2").css("display")=='none'){
            $("#Vrbutton2").css("background-color","rgb(203,225,254)")
            $("#VRup").css("display","none");
            $("#VRup2").css("display","block");
            $("#Vrbutton1").css("background-color","white")
        }
    });
})
$(function(){
    $("#Vrbutton1").click(
        function() {
        if($("#VRup").css("display")=='none'){
            $("#Vrbutton1").css("background-color","rgb(203,225,254)")
            $("#Vrbutton2").css("background-color","white")
            $("#VRup2").css("display","none");
            $("#VRup").css("display","block");
        }
    });
})
function addTr() {
    // var VI1 = document.getElementsByClassName("VLinput1")
    // var VI2 = document.getElementsByClassName("VLinput2")
    // var dis= document.getElementsByClassName("dis")
    // var disValue = dis[0].options[dis[0].selectedIndex].value;
    var table = document.getElementById("VenderList");
    
    // if(VI1!="" && VI2!="" && dis!=null){
    //     for(var i =0;i<VI1.length;i++){
    //         VI1[i].value += VI1[i].value;
    //         VI2[i].value += VI2[i].value;
    //         dis[i].options[dis[i].selectedIndex].value+=dis[i].options[dis[i].selectedIndex].value;
    //     }
        table.innerHTML += '<tr class="Vender_List"><td><input type="checkbox" class="check"></td><td><input type="text" style="width: 60px" class="VLinput1"></td><td><input type="text" style="width: 60px" class="VLinput2"></td><td><select name="" class="dis"><option value="">일반</option><option value="">무역</option><option value="">주민</option><option value="">기타</option></select></td></tr>';
    // } else {
    //     alert(disValue);
    // }
    $(document).ready(function(){
        $("#VRup *").attr("disabled",true);
        $("#VRup2 *").attr("disabled",true);
        $(".Vender_List").on("click",function(){
            if($(this).find(".VLinput1").val()!="" && $(this).find(".VLinput2").val()!=""){
                $("#VRup *").attr("disabled",false);
                $("#VRup2 *").attr("disabled",false);
            } else {
                $("#VRup *").attr("disabled",true);
                $("#VRup2 *").attr("disabled",true);
            }
        });
    });
}
function deleteTr(){
    var check = document.getElementsByClassName("check");
    var run = true;
    for(var i=check.length-1;i=>0;i--){
        if(check[i].checked==true){
            check[i].parentNode.parentNode.remove();
        }
    }
}
function checkall(){
    // alert(check.length);
    var check = $("input[class=check]")
    if($("#allcheck").is(":checked")){
        $("input.check").prop("checked",true);
    } else {
        $("input.check").prop("checked",false);
    }
}
function openAD(url,name) {
    var option = 'width=620 height=500 left=200 top=200'
    window.open(url,name,option);
}
function moveHomepage(){
    var home = document.getElementById("VLinputHome").value;
    if(home==""){
        home = "http://www."+document.getElementById("VLinputHome").value;
    } else {
        home = "http://"+document.getElementById("VLinputHome").value;
    }
    window.open(home);
}
function openSW(url,name) {
    var option = 'width=330 height=400 left=400 top=200'
    window.open(url,name,option);
}
function openST(url,name) {
    var option = 'width=330 height=400 left=400 top=200'
    window.open(url,name,option);
}

$(document).ready(function(){
    $("#VRup *").attr("disabled",true);
    $("#VRup2 *").attr("disabled",true);
    
    // $("#code, #ven").on("input",function(){
    //     if($("#code").val()!="" && $("#ven").val()!=""){
    //         $("#VRup *").attr("disabled",false);
    //         $("#VRup2 *").attr("disabled",false);
    //     } else {
    //         $("#VRup *").attr("disabled",true);
    //         $("#VRup2 *").attr("disabled",true);
    //     }
    // })
    $(".Vender_List").on("click",function(){
        if($(this).find(".VLinput1").val()!=""){
            $("#VRup *").attr("disabled",false);
            $("#VRup2 *").attr("disabled",false);
        } else {
            $("#VRup *").attr("disabled",true);
            $("#VRup2 *").attr("disabled",true);
        }
    })
});