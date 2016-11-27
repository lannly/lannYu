<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>问卷调查</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <meta name="format-detection" content="telphone=no, email=no"/>
    <meta name="wap-font-scale" content="no"><!--解决UC手机字体变大的问题-->
    <meta name="screen-orientation" content="portrait"><!-- uc强制竖屏 -->
    <meta name="x5-orientation" content="portrait"><!-- QQ强制竖屏 -->
    <meta name="full-screen" content="yes"><!-- UC强制全屏 -->
    <meta name="x5-fullscreen" content="true"><!-- QQ强制全屏 -->
    <meta name="browsermode" content="application"><!-- UC应用模式 -->
    <link rel="stylesheet" href="css/paper/reset.css"/>
    <link rel="stylesheet" href="css/paper/wjdc.css"/>
    <link rel="stylesheet" href="css/paper/cropper.min.css"/><!-- 图片裁剪样式-->
    <link rel="stylesheet" href="css/paper/demo.css"/>  <!-- 图片上传样式-->

</head>
<body>
<!--
<header class="bar nav-head">
    <a href="javascript:history.go(-1)" class="pull-left back"></a>
    <div class="title">问卷调查</div>
    <a href="javascript:void(0)" class="pull-right">取消</a>
</header>
-->
<div class="page-content bgWhite">
    <div class="wjdc-content">
        <form action="/question-1.0/question/submitScore" id="wjdcForm" method="post">
            <div class="selRsr">
                <div class="chooseRestaurant">
                    <label>请选择连锁品牌</label>
                    <select name="brandId" id="brandName">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="chooseRestaurant">
                    <label>请选择餐厅</label>
                    <select name="storeId" id="RstrtName">
                        <option value="0">请选择</option>
                    </select>
                </div>
            </div>


            <%--<div class="wjdc-table" id="question">
               <div class='item'>
                    <div class='quetion'>1.你觉得餐厅环境合格么？</div>
                    <!--单选答案-->
                    <div class='answer'>
                        <div class='isRadio'>
                            <label><input type='radio' name='hj' value='0'/>合格</label>
                            <label><input type='radio' name='hj' value='1'/>不合格</label>
                        </div>
                        <!-- 图片上传 start-->
                        <div class='imgUpload'>
                            <div class='pure-form' action='' method='post'>

                                <!-- 上传图片的预览区域 -->
                                <section class='upload-box' id='J_upload_box'>
                                    <div class='upload' id='J_file_wrap'>
                                        <input type='file' accept='image/*' name='pic' id='J_file'>
                                    </div>
                                </section>
                                <div class='des'>
                                    描述：<br/>
                                    <textarea name='' placeholder='图片描述'
                                              onkeyup='this.style.height='30px'; this.style.height = this.scrollHeight + 0 + 'px';'></textarea>
                                </div>

                            </div>
                            <!-- 图片裁剪工作区域 -->
                            <section id='J_file_box'>
                                <img src='http://www.wjdc.com/mobile-iamge-upload/' id='J_file_box_img' alt=''>
                            </section>
                            <!-- 选择裁剪比例 -->
                            <section class='crop-group' id='J_crop_group'>
                                <label class='cjbl'>
                                    <input type='radio' name='scale' value='1/1'>
                                    <span>1 : 1</span>
                                </label>
                                <label class='cjbl'>
                                    <input type='radio' name='scale' value='3/2' checked='checked'>
                                    <span>3 : 2</span>
                                </label>
                                <label class='cjbl'>
                                    <input type='radio' name='scale' value='9/16'>
                                    <span>9 : 16</span>
                                </label>
                            </section>
                            <!-- 裁剪或取消 -->
                            <section class='btn-group' id='J_btn_group'>
                                <span id='J_cancel'>取消</span>
                                <span id='J_crop'>裁剪</span>
                            </section>
                        </div>
                        <!-- 图片上传 end-->
                    </div>
                </div>
                &lt;%&ndash;<div class="item">
                    <div class="quetion">1.你对该餐厅哪些服务比较满意？</div>
                    <!--多选答案-->
                    <div class="answer">
                        <div class="isMulti">
                            <label><input type="checkbox" name="" value="0" id="0"/>价格</label>
                            <label><input type="checkbox" name="" value="1" id="1"/>服务</label>
                            <label><input type="checkbox" name="" value="2" id="2"/>菜色</label>
                            <label><input type="checkbox" name="" value="3" id="3"/>地段</label>
                            <label><input type="checkbox" name="" value="4" id="4"/>环境</label>
                        </div>
                    </div>
                </div>&ndash;%&gt;
            </div>--%>

            <div class="wjdc-table" id="question">
                <!--
               <div class="item">
                   <div class="quetion">1.餐厅有滤水系统，制冰机清洁维养记录</div>
                   <div class="answer">
                       <div class="isRadio"><label><input type="radio" name="models[0].anwser" value="0"
                                                          onclick="ctrlDivShow(this)"
                                                          checked="true">合格</label><label><input type="radio"
                                                                                                 name="models[0].anwser"
                                                                                                 value="1"
                                                                                                 onclick="ctrlDivShow(this)">不合格</label><label><input
                               type="hidden" name="models[0].questionId" value="242" onclick="ctrlDivShow(this)"
                               checked="true"></label></div>
                       <div class="imgUpload" name="imgupload" style="display: block;">
                           <div class="pure-form" action="" method="post">
                               <section class="upload-box J_upload_box" id="">
                                   <div class="upload J_file_wrap" id="">
                                       <input type="file" accept="image/*" name="pic" class="J_file" id="">
                                   </div>
                               </section>
                               <div class="des">描述：<br><textarea name="models[0].description" placeholder="图片描述"
                                                                 onkeyup="this.style.height=" 30px';=""
                                   this.style.height="this.scrollHeight" +="" 0="" 'px';'=""></textarea></div>
                           </div>
                           <section class="J_file_box" id="">
                               <img src="http://www.wjdc.com/mobile-iamge-upload/" class="J_file_box_img" id="" alt="">
                           </section>
                           <section class="crop-group J_crop_group" id="">
                               <label class="cjbl"><input type="radio"
                                                          name="scale"
                                                          value="1/1"><span>1 : 1</span></label><label
                                   class="cjbl"><input type="radio" name="scale" value="3/2" checked="checked"><span>3 : 2</span></label><label
                                   class="cjbl"><input type="radio" name="scale"
                                                       value="9/16"><span>9 : 16</span></label></section>
                           <section class="btn-group J_btn_group" id=""><span id="J_cancel">取消</span><span id="J_crop">裁剪</span>
                           </section>
                       </div>
                   </div>
               </div>-->
           </div>
        </form>
        <input class="bTn okBtn-center" type="submit" onclick="submitForm()" value="提交" id="wjdc_submit"/>
    </div>


</div>
<div id="pop_login">
    <div class="popBg"></div>
    <div class="popContent">
        <form action="" id="login-form" class="input-group login-input-group">
            <div class="input-row">
                <label>账号</label>
                <input type="text" name="input_name" id="input_name" placeholder="请输入您的账号">
            </div>
            <div class="input-row">
                <label>密码</label>
                <input type="password" name="input_psw" id="input_psw" placeholder="请输入密码">
            </div>
        </form>
        <button class="bTn okBtn-center btn-txt-spacing" id="ok_btn" onclick="return false;" disabled>登录</button>

    </div>
</div>
<script src="js/paper/jquery-1.8.3.min.js"></script>
<script src="js/paper/jquery.form.js"></script>
<script>
    $(function () {
        //登录
        $("#pop_login").fadeIn();
        $(".popBg").click(function () {
            $("#pop_login").fadeOut();
        });
        $("#ok_btn").click(function () {
            $("#pop_login").fadeOut(); //登录按钮斯事件
        });

        //登录密码为空时登录按钮不可以
        if (!String.prototype.trim) {
            String.prototype.trim = function () {
                return this.replace(/^\s+|\s+$/g, '');
            };
        }
        var dom = document.querySelector("[name=input_psw]");
        var btn = document.querySelector("#ok_btn");
        dom.addEventListener("input", function () {
            if (this.value.trim().length) {
                btn.removeAttribute("disabled");
            } else {
                btn.disabled = "disabled";
            }
        }, false);

        //radio等样式设置
        var $radio = $(".wjdc-table input[type='radio']");
        //单选默认选择第一个
        $("input[type='radio']:eq(0)").attr("checked", 'checked');
        $radio.on("click", function () {
            $(this).addClass("on_check").parents("label").siblings("label").find("input").removeClass("on_check");
        });
        var $checkbox = $(".wjdc-table input[type='checkbox']");
        $checkbox.on("click", function () {
            $(this).toggleClass("on_check");
        });

        $.ajax({
            type: "GET",
            url: "/question-1.0/store/selectBrand",
            data: "",
            success: function (data) {
                var select = "<option value='0'>请选择</option>";
                $.each(data.data, function (n, value) {
                    //alert(n+' '+value.id+' '+value.brandName);
                    select = select + "<option value='" + value.id + "'>" + value.brandName + "</option>";
                });
                $('#brandName').html(select);
            }
        });

        $('#brandName').change(function () {
            var brandV = $('#brandName').val();
            if (brandV == 0) {
                $('#RstrtName').html("<option value='0'>请选择</option>");
                return;
            }
            $.ajax({
                type: "GET",
                url: "/question-1.0/store/getStoreByBid",
                data: "brandId=" + brandV,
                success: function (data) {
                    var select = "<option value='0'>请选择</option>";
                    $.each(data.data, function (n, value) {
                        //alert(n+' '+value.id+' '+value.brandName);
                        select = select + "<option value='" + value.id + "'>" + value.storeName + "</option>";
                    });
                    $('#RstrtName').html(select);
                }
            });

            $.ajax({
                type: "GET",
                url: "/question-1.0/store/getQuestionByBid",
                data: "brandId=" + brandV,
                success: function (data) {
                    //alert(data.message+data.data.length);
                    var html = "";
                    $.each(data.data, function (n, value) {
                        //alert(n+' '+value.id+' '+value.brandName);
                        html = html + "<div class='item'>";
                        html = html + "<div class='quetion'>" + (n + 1) + '.' + value.questionName + "</div>";
                        html = html + "<div class='answer'><div class='isRadio'>";
                        html = html + "<label><input type='radio' name='models[" + n + "].anwser' value='0' onclick='ctrlDivShow(this)' checked='true'/>合格</label>";
                        html = html + "<label><input type='radio' name='models[" + n + "].anwser' value='1' onclick='ctrlDivShow(this)'/>不合格</label>";
                        html = html + "<label><input type='hidden' name='models[" + n + "].questionId' value='" + value.id + "' onclick='ctrlDivShow(this)' checked='true'/></label></div>";
                        html = html + "<div class='imgUpload' name='imgupload' style='display: none'><div class='pure-form' action='' method='post'>";
                        html = html + "<section class='upload-box J_upload_box' id=''>";
                        html = html + "<div class='upload J_file_wrap' id=''>";
                        html = html + "<input type='file' accept='image/*' name='pic' id='' class='J_file'></div></section>";
                        html = html + "<div class='des'>描述：<br/><textarea name='models[" + n + "].description' placeholder='图片描述' ";
                        html = html + "onkeyup='this.style.height='30px'; this.style.height = this.scrollHeight + 0 + 'px';'>";
                        html = html + "</textarea></div></div>";
                        html = html + "<section id='' class='J_file_box'><img src='http://www.wjdc.com/mobile-iamge-upload/' id='' class='J_file_box_img' alt=''>";
                        html = html + "</section>";
                        html = html + "<section class='crop-group J_crop_group' id=''>";
                        html = html + "<label class='cjbl'><input type='radio' name='scale' value='1/1'><span>1 : 1</span></label>";
                        html = html + "<label class='cjbl'>";
                        html = html + "<input type='radio' name='scale' value='3/2' checked='checked'><span>3 : 2</span></label>";
                        html = html + "<label class='cjbl'><input type='radio' name='scale' value='9/16'><span>9 : 16</span></label></section>";
                        html = html + "<section class='btn-group J_btn_group' id=''>";
                        html = html + "<span class='J_cancel'>取消</span><span class='J_crop'>裁剪</span></section></div></div></div>";
                    });
                    $('#question').html(html);
                }
            });
        });

    })

    function ctrlDivShow(obj) {
        if ($(obj).val() == '1') {
            $(obj).closest("div").parent().find("[name='imgupload']").css("display", "block");
        } else {
            $(obj).closest("div").parent().find("[name='imgupload']").css("display", "none");
        }
    }

    function submitForm() {
        if ($("#brandName").val() == '0') {
            alert('请选择品牌！');
            return;
        }

        if ($("#RstrtName").val() == '0') {
            alert('请选择餐厅！');
            return;
        }
        $("#wjdc_submit").attr('disabled', true);
        $("#wjdc_submit").css('background-color', 'grey');
        $("#wjdcForm").ajaxSubmit({
            type: 'POST', url: '/question/submitScore',
            success: function (data) { //...
                if (data.code == '200') {
                    alert('提交成功！');
                } else {
                    alert(data.message);
                    $("#wjdc_submit").attr('disabled', false);
                    $("#wjdc_submit").css('background-color', '#3384fe');
                }

            }
        });
    }

</script>
<script src="js/paper/upload.js"></script>  <!--上传图片-->
<script src="js/paper/demo.js"></script> <!--上传图片模块的样式-->
<script>
    <!-- 图片上传状态提醒,提示框渐变消失-->
    function PopBox(text, time) {
        var oPopBox = document.createElement("div");
        oPopBox.id = "popBox";
        oPopBox.style.cssText = "position: absolute;width: 80%;left:10%;bottom:50%;min-height: 10px;z-index: 1001;";

        var content = document.createElement("div");
        content.id = "content";
        content.style.cssText = "color:#fff;background: #000;padding:10px;border-radius: 10px;box-sizing: border-box;background:rgba(51, 79, 121, 0.6)";
        oPopBox.appendChild(content);

        var ele = document.createElement("div");
        ele.id = "ele";
        ele.style.cssText = "line-height: 24px;font-size: 18px;text-align: center;color: #fff;";
        ele.innerText = text;
        content.appendChild(ele);

        document.body.appendChild(oPopBox);

        var goTransparent = function () {
            var opa = ["1", "0.95", "0.9", "0.85", "0.8", "0.75", "0.7", "0.65", "0.6", "0.55", "0.5", "0.45", "0.4", "0.35", "0.3", "0.25", "0.2", "0.15", "0.1", "0.05", "0"];
            var i = 0;
            var isOut = true;
            setInterval(function () {
                //var oPopBox=document.getElementById("popBox");
                if (i >= 0 && isOut) {
                    i++;
                    oPopBox.style.opacity = opa[i];
                }
                else if (i <= opa.length && !isOut) {
                    i = opa.length - 1;
                    oPopBox.style.opacity = opa[i];
                }
                else {
                    isOut = !isOut;
                }
            }, 50);
        };

        setTimeout(function () {
            goTransparent();
        }, time);

        setTimeout(function () {
            oPopBox.remove();
        }, time + 1000);


    }
</script>
</body>
</html>
