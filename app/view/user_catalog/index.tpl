<!-- app/view/index.tpl 我的首页-->

{% extends "../layout.tpl" %}
{% block head %}
  <title>TA的</title>
  <link rel="stylesheet" type="text/css" href="/public/css/mine.css"/>
   <link rel="stylesheet" type="text/css" href="/public/css/user_catalog.css"/>
  <script src="../../public/js/mine.js"></script>
{% endblock %}

{% block breadcrumb %}
  <div class="breadcrumb">
    <div> 首页 > <a href="javascript:;">TA的</a></div>
  </div>
{% endblock %}

{% block body %}
<div class="mine_page user_catalog">
    <div class="user_info">
        <div class=" bg bg-blur"></div>
        <div class="operate_icon">
            <img data-toggle="modal" data-target="#shareModal" class="share" src="../../public/img/Share.png"/>
        </div>
        <div class="content content_front">
            <span class="img_wrap"><img src="../../public/img/banner/2.jpg"></span>
            <div class="nickname">{{userInfo.nickname}}</div> 
            <div class="position">{{userInfo.position}}</div>
            <div class="f12 fans">
                <span class="fans_count">粉丝 123</span>
                <span class="split_line">|</span>
                <span class="follow_count">关注 300</span>
            </div>
        </div>  
    </div>
<div class="container">
    <div class="content_wrap">
        <div class="row">
            <div class="col-md-12">
                <ul class="clearfix nav_link user_nav_link">
                    <li class="active" data-name="folder">
                        <span>TA的目录</span> 
                    </li>
                    <li data-name="collect"><span>TA的收藏</span></li>
                </ul>  
            </div>
            <!--TA的目录、TA的收藏-->
            <div class="col-md-12">
            <!--TA的目录-->
                <div class="folders_list clearfix">
                   <div>
                     <img src="../public/img/default_file.png">
                     <div class="folder_title">默认目录</div>
                     <div class="folder_msg gray_color">内容 333</div>
                   </div>
                   <div>
                     <img src="../public/img/normal_file.png">
                     <div class="folder_title">
                        汽车IT业内超牛逼的文章合集
                     </div>
                     <div class="folder_msg gray_color">
                        <span>订阅 344</span>
                        <span class="split_line">|</span>
                        <span>内容98</span>
                     </div>
                   </div>
                   <div>
                     <img src="../public/img/normal_file.png">
                     <div class="folder_title">汽车IT业内超牛逼的文章合集</div>
                     <div class="folder_msg gray_color">
                        <span>订阅 344</span>
                        <span class="split_line">|</span>
                        <span>内容98</span> 
                     </div>
                   </div>
                   <div>
                     <img src="../public/img/normal_file.png">
                     <div class="folder_title">汽车IT业内超牛逼的文章合集</div>
                     <div class="folder_msg gray_color">
                        <span>订阅 344</span>
                        <span class="split_line">|</span>
                        <span>内容98</span>
                     </div>
                   </div>
                </div>

            <!--TA的粉丝-->
                <div class="list_wrap fans_list display_none">
                    <div class="title">TA的粉丝<span>/ 6</span></div>
                    <ul class="list">
                        {% for user in users %}
                        <li>
                            <img class="pull-left photo" src="{{user.avatar_url}}"/>
                            <div class="pull-left info">
                                <div class="name">{{user.name}}</div>
                                <div class="positon">{{user.position}}</div>
                            </div>
                            {% if user.following and user.followed %}
                            <button class="pull-right has_follow">
                                <img src="../../public/img/huxiangguanzhu.png"/>
                                <span>互相关注</span>
                            </button>
                            {% elif not user.following and user.followed %}
                            <button class="pull-right">
                                <img src="../../public/img/add_white_guanzhu.png"/>
                                <span>关注</span>
                            </button>
                            {% elif not user.following and not user.followed %}
                            <button class="pull-right">
                                <img src="../../public/img/add_white_guanzhu.png"/>
                                <span>关注</span>
                            </button>
                            {% elif user.following and not user.followed %}
                            <button class="pull-right has_follow">
                                <img src="../../public/img/yiguanzhu.png"/>
                                <span>已关注</span>
                            </button>
                            {% endif %}
                            
                        </li>
                        {% endfor %}
                    </ul>
                </div>

                 <!--TA的关注-->
                <div class="list_wrap follow_list display_none">
                    <div class="title">TA的关注<span>/ 6</span></div>
                    <ul class="list">
                        {% for user in users %}
                        <li>
                            <img class="pull-left photo" src="{{user.avatar_url}}"/>
                            <div class="pull-left info">
                                <div class="name">{{user.name}}</div>
                                <div class="positon">{{user.position}}</div>
                            </div>
                            {% if user.following and user.followed %}
                            <button class="pull-right has_follow">
                                <img src="../../public/img/huxiangguanzhu.png"/>
                                <span>互相关注</span>
                            </button>
                            {% elif not user.following and user.followed %}
                            <button class="pull-right">
                                <img src="../../public/img/add_white_guanzhu.png"/>
                                <span>关注</span>
                            </button>
                            {% elif not user.following and not user.followed %}
                            <button class="pull-right">
                                <img src="../../public/img/add_white_guanzhu.png"/>
                                <span>关注</span>
                            </button>
                            {% elif user.following and not user.followed %}
                            <button class="pull-right has_follow">
                                <img src="../../public/img/yiguanzhu.png"/>
                                <span>已关注</span>
                            </button>
                            {% endif %}
                            
                        </li>
                        {% endfor %}
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
{% endblock %}

{% block modal %} 
<!-- 分享 -->
<div class="modal fade" id="shareModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body clearfix">
        <div class="title content_title">微信扫一扫 即可分享</div>
        <div class="code_img">
            <img src="../../public/img/code.png"/>
        </div>
        
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

{% endblock%}


