/**
 * Created by yulan on 2017/2/17.
 */
function PopBox(text,time) {

    var oPopBox = document.createElement("div");
    oPopBox.id = "popBox";
    oPopBox.style.cssText="position: absolute;width: 80%;left:10%;bottom:20%;min-height: 10px;z-index: 1001;";

    var content = document.createElement("div");
    content.id = "content";
    content.style.cssText="color:#fff;background: #000;padding:10px;border-radius: 10px;box-sizing: border-box;background:rgba(223, 48, 81, 1)";
    oPopBox.appendChild(content);

    var ele = document.createElement("div");
    ele.id = "ele";
    ele.style.cssText="line-height: 24px;font-size: 16px;text-align: center;";
    ele.innerText= text; //contentΪ�������е�����
    content.appendChild(ele);

    document.body.appendChild(oPopBox);

    var goTransparent=function(){
        var opa  =  ["1","0.95","0.9","0.85","0.8","0.75","0.7","0.65","0.6","0.55","0.5","0.45","0.4","0.35","0.3","0.25","0.2","0.15","0.1","0.05","0"];
        var i = 0;
        var isOut = true;
        setInterval(function(){

            if (i>=0 && isOut) {
                i++;
                oPopBox.style.opacity=opa[i];
            }
            else if(i<= opa.length && !isOut){
                i=opa.length-1;
                oPopBox.style.opacity=opa[i];
            }
            else{
                isOut = !isOut;
            }
        },50);
    };

    //͸��������Ϊ0
    setTimeout(function(){
        goTransparent();
    },time);

    //�Ƴ�����
    setTimeout(function(){
        oPopBox.remove();
    },time+1000);


}



