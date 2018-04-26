<!-- app/view/notices.tpl 消息中心-->

{% extends "../layout.tpl" %}
{% block head %}
  <title>搜索</title>
  <link rel="stylesheet" type="text/css" href="/public/css/search.css"/>
{% endblock %}

{% block breadcrumb %}
  <div class="breadcrumb">
    <div> 首页 > <a href="javascript:;">搜索</a></div>
  </div>
{% endblock %}

{% block body %}
<div class="container">
    <div class="content_wrap search">
        <div>搜索</div>
        
        <ul class="search_wrap">
            {% for item in  listData%}
            <li>
              <img class="pull-left" src="../../public/img/banner/3.png"/>
              <div class="pull-left info">
                <div><span class="blue_color"><b>{{item.user_nickname}}</b></span> 订阅了 <span class="blue_color"><b>{{item.from_user}}</b></span></div>
                <div class="light_gray_color date_time">{{item.time}}</div>
              </div>
            </li>
            {% endfor %}
        </ul>
    <div>
</div>
{% endblock %}

