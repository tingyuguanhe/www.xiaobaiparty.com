<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="renderer" content="webkit" />
  <meta name="description" content="小白爬梯" />
  <meta name="keyword" content="小白爬梯" />

  <link rel="shortcut icon" href="/img/favicon.ico" />

  <!--[if lte IE 8 ]>
    <script src="../public/js/lib/jquery-1.9.0.min.js"></script>
  <![endif]-->
  <!--[if (gte IE 9)|!(IE)]><-->
    <script src="../public/js/lib/jquery-3.2.1.min.js"></script>
  <!--[endif]-->

<link rel="stylesheet" type="text/css" href="../public/js/lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/public/css/common.css"/>
<script src="http://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
<script src="../public/js/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<script src="../public/js/common.js"></script>


  {% block head %}
  <title>小白party</title>
  {% endblock %}
  
  <script src="/public/js/index.js"></script>
  
</head>
<body>

{% block top %} 
  {# S=>顶部导航栏  #}
  <nav class="navbar navbar-fixed-top topbar">
    <div>
    {% block nav %}
    <div class="nav_head">
      <div class="label-nav pull-left">
          <a href="javascript:;" class="btn"><img class="logo" src="../public/img/default_file.png"></a>
          <span class="logo_text">小白爬梯</span>
          <a href="/mine"><span class="nav_link mine" id="mine">我的</span></a>
          <a href="/"><span class="nav_link">发现</span></a>
      </div>
      <div class="pull-right right_nav">
      <div class="clearfix pull-left search_box">
            <div class="search_btn clearfix pull-left">
              <a href="javascript:;" class="btn search_target">本站</a>
              <span class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="arrow_icon" src="../public/img/arrow_down.png">
              </span>
              <ul class="dropdown-menu">
                <li><a href="javascript:;">本站</a></li>
                <li><a target="_blank" href="https://www.baidu.com/">百度</a></li>
                <li><a href="/microblog">google</a></li>
              </ul>
            </div>
            <div class="search_wrap pull-left">
              <img class="search_icon" src="../public/img/search.png">
              <input type="text" class="form-control btn-small" placeholder="输入关键字">
            </div>
          </di>
      </div>
      <div class="pull-left collect_btn_group">
        <div class="pull-left"><a href="/upload"><button class="btn btn-primary">上传收藏</button></a></div>
        <div class="pull-left nav_link collect_tool">收藏工具</div>
      </div>
      <ul class="nav navbar-nav navbar-right">
          <li class="user-bar">
              {% if userId %}
                <div class="user-login">
                  <!---<a href="/userinfo/{{userId}}"></a>-->
                  <img class="user_photo" src="../public/img/photo.png" width="50" alt="">
                </div>
              {% else %}
                <div class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <img class="user_photo" src="../public/img/photo.png" width="50" alt="">
                  <span class="nickname">小白party</span>
                  <img class="arrow_icon" src="../public/img/arrow_user.png">  
                </div>
                <ul class="dropdown-menu user_ope_dropdown">
                  <li><a href="／mine">我的</a></li>
                  <li><a href="/notices">消息中心<span class="badge">4</span></a></li>
                  <li><a href="#">退出</a></li>
                </ul>
            {% endif %}
          </li>
        </ul>
    </div>
    {% endblock%}
    </div>
  </nav>
    {% block breadcrumb %}
      <div class="breadcrumb">
        <div> 首页 > <a href="javascript:;">消息中心</a></div>
      </div>
    {% endblock %}
  {#E=> 顶部导航栏#}
{% endblock%}

<div class="nr">
  <div class="main-body">
      {% block body %} 
      我是内容区域
      {% endblock%}
  </div>
</div>

{% block modal %} 
    <!-- 我是弹框区域 -->
{% endblock%}

<!-- 登录弹框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        
        <div class="title">快速登录</div>
        <div class="text">收藏是一种习惯,分类是一种能力,分享是一种美德</div>
        <!--<div class="iframe">
            <iframe src="" width="160px" height="160px"></iframe>
        </div>-->
        <div class="code_img" id="wx_scan_login"><!--<img src="../public/img/code.png" width="100%"/>--></div>
        <p class="tip">微信扫一扫,即可登录</p>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

  <div class="container">
     <div class="footer"></div>
  </div>

</body>
</html>




