/**
 * Created by yulan on 2016/3/11.
 */
$(function () {
    $(".close-btn").click(function(){
        $(".scrollText").fadeOut();
    });
    var $seltab=$(".foot-bar .tab-item");
    $seltab.click(function(){
        $(this).addClass("active").siblings().removeClass("active");
    });

});
//tabѡ�
function setTab(name,index,n){
    for(i=1;i<=n;i++){
        var menu=document.getElementById(name+i);/* two1 */
        var con=document.getElementById("bd_"+name+i);/* con_two_1 */
        menu.className=i==index?"on":"";/*��Ŀ����  �Ⱥ�����*/
        con.style.display=i==index?"block":"none";
    }
}
//������С�߶�
function setHeight(){
    var sHight=document.documentElement.clientHeight-140;
    //var sHight=document.body.offsetHeight-140;
    var boxshow=document.querySelector(".tabBox .bd");
    boxshow.style.minHeight=sHight+"px";

}

