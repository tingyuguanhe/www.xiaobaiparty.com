
{% extends "../layout.tpl" %}
{% block head %}
  <title>发现</title>
  
  <link rel="stylesheet" type="text/css" href="/public/css/find.css"/>
  <link rel="stylesheet" type="text/css" href="../../public/js/lib/swiper/idangerous.swiper2.7.6.css"/>
  <script src="../../public/js/lib/swiper/idangerous.swiper2.7.6.min.js"/></script>
  <script src="/public/js/find.js"/></script>
  <style>
.device {
  width: 784px;
  height: 314px;
  position: relative;
}

.swiper-container {
  height: 314px;
  width: 100%;
}
.content-slide {
  padding: 20px;
  color: #fff;
}
.title {
  font-size: 25px;
  margin-bottom: 10px;
}

.pagination {
  position: absolute;
  z-index: 20;
  bottom: 10px;
  width: 100%;
  text-align: center;
}
.swiper-pagination-switch {
  display: inline-block;
  width: 8px;
  height: 8px;
  border-radius: 8px;
  background: #555;
  margin: 0 5px;
  opacity: 0.8;
  border: 1px solid #fff;
  cursor: pointer;
}
.swiper-active-switch {
  background: #fff;
}
</style>

{% endblock %}
{% block breadcrumb %}
  <div class="breadcrumb">
    <div> 首页 > <a href="javascript:;">发现</a></div>
  </div>
{% endblock %}
{% block body %}
<div class="container"> 
  <div class="home_page_wrap">
    <div class="content_wrap pull-left">
      <div class="banner_wrap">
        <div class="device">
          <div class="swiper-container">
            <div class="swiper-wrapper">
              <div class="swiper-slide"> <img src="../../public/img/banner/4.jpg" width="784px"> </div>
              <div class="swiper-slide"> <img src="../../public/img/banner/5.jpg" width="784px"></div>
              <div class="swiper-slide"> <img src="../../public/img/banner/6.jpg" width="784px"></div>
              <div class="swiper-slide"> <img src="../../public/img/banner/7.jpg" width="784px"></div>
            </div>
            <div class="pagination"></div>
          </div>
          
          
        </div>
        
      </div>
      <div class="find_page_wrap">
        <div class="page_title">刷一刷</div>
        <ul class="nav_menu_wrap">
        {% for item in navMemu %}
          {% if item.value == activeNavMemu %}
          <li class="item active">
            <span>{{ item.name }}</span>
          </li>
          {% else %}
          <li class="item">
            <span>{{ item.name }}</span>
          </li>
          {% endif %}
        {% endfor %}
        </ul>
        {% for item in listData %}
        <div class="row">
            <div class="col-md-3" >
              <a href="/catalog_detail/{{item.id}}">
                <img src="../../public/img/banner/1.jpg" width="160px" height="108px"/>
              </a>
            </div>
            <div class="col-md-9 article_info">
              <div class="title">{{item.title}}</div>
              <div class="f12 light_gray_color pull-left">
                <img class="photo" src="../../public/img/banner/1.jpg"/>
                <span class="nickname">{{item.nickname}}</span>
                <span>所属目录:</span>
                {% for folder in item.folders%}
                <span class="folder_name">{{folder}}</span>
                {% endfor %}
              </div>
              <div class="pull-right">
                <span class="cancel_collect">取消收藏</span>
                <span class="collect">收藏</span>
              </div> 
            </div>
        </div>
        {% endfor %}
      </div>
    </div>
    <div class="pull-right find_right">
      <div class="users recommend">
        <div class="title clearfix">
          <div class="page_title pull-left">行业达人</div>
          <span class="pull-right refresh_link blue_color">换一换</span>
        </div>
        <!--行业达人-->
        <ul class="list">
        {% for user in users %}
          <li>
            <a href="/user_catalog/{{user.id}}">
              <img class="pull-left photo" src="{{user.avatar_url}}"/>
              <div class="pull-left">
                <div class="name">{{user.name}}</div>
                <div class="positon">{{user.position}}</div>
              </div>
            </a>
            <button class="pull-right">
              <img src="../../public/img/add_guanzhu.png"/>
              <span>关注</span>
            </button>
          </li>
        {% endfor %}
        </ul>
      </div>

      <!--精选目录-->
      <div class="folders recommend">
        <div class="title clearfix">
          <div class="page_title pull-left">精选目录</div>
          <span class="pull-right refresh_link blue_color">换一换</span>
        </div>
        <!--精选目录-->
        <ul class="list">
        {% for item in folders %}
          <li>
            <img class="pull-left folder_icon" src="../../public/img/default_file.png"/>
            <div class="pull-left info_wrap">
              <div class="name">{{item.name}}</div>
              <div class="positon">
                <span>订阅 {{item.sub}}</span> |
                <span>内容 {{item.content}}</span>
              </div>
            </div>
            <div class="clearfix pull-right">
              <button class="pull-right">
                <img src="../../public/img/add_guanzhu.png"/>
                <span>关注</span>
              </button>
              <div class="money">¥{{(item.money)/100}}</div>
            </div>
          </li>
        {% endfor %}
        </ul>
      </div>
      <!--二维码-->
      <div class="erwei_code recommend">
        <div class="title clearfix">
          <div class="page_title">小白助手</div>
          <div class="tip">将内容转发给小白助手即可完成收藏哦</div>
        </div>
        <div class="code_wrap clearfix">
          <div class="pull-left code_img">
            <img src="../../public/img/code.png"/>
            <div>微信ID：xbpt</div>
          </div>
          <div class="pull-right code_img">
            <img src="../../public/img/code.png"/>
            <div>微信ID：xbpt</div>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
{% endblock %}


