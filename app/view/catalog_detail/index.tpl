
{% extends "../layout.tpl" %}
{% block head %}
  <title>目录详情</title>
  <link rel="stylesheet" type="text/css" href="/public/css/details.css"/>
  
{% endblock %}

{% block breadcrumb %}
  <div class="breadcrumb">
    <div> 首页 > <a href="javascript:;">目录详情</a></div>
  </div>
{% endblock %}

{% block body %}
  <div class="container">
    <div class="content_wrap catalog_detail">
      <div class="head">
        <div class="folder_info clearfix">
          <img class="pull-left normal_file_icon" src="../../public/img/normal_file.png"/>
          <div class="pull-left">
            <div class="name">汽车之家</div>
            <div class="folder_msg">订阅 10<span class="split_line">|</span>内容 20</div>
          </div>
          <div class="pull-right">
            <div> <button class="btn btn-primary sbu_btn"><img class="add_icon" src="../../public/img/add_dingyue.png"/>订阅</button></div>
            <div class="money pull-right">$ 1.00</div>
            <div><button class="btn btn-default share_btn">分享</button></div>
          </div>
        </div>
        <div class="author">
          <img class="photo" src="../../public/img/photo.png"/>
          <span class="light_gray_color">呼啦啦</span>
          <button class="follow_btn"><img class="add_icon" src="../../public/img/add_guanzhu.png"/>关注</button>
        </div>
      </div>
      <div class="article_list">
        {% for item in listData %}
        <div class="row">
            <div class="col-md-3" >
              <a href="/catalog_detail/{{item.id}}">
                <img src="../../public/img/banner/2.jpg" width="160px" height="108px"/>
              </a>
            </div>
            <div class="col-md-9 article_info">
              <div class="title">{{item.title}}</div>
              <div class="f12 light_gray_color pull-left">
                <img class="photo" src="../../public/img/banner/3.png"/>
                <span class="nickname">{{item.nickname}}</span>
                <span>所属目录:</span>
                {% for folder in item.folders%}
                <span class="folder_name">{{folder}}</span>
                {% endfor %}
              </div>
              <div class="pull-right">
                <span data-toggle="modal" data-target="#delModal" class="cancel_collect">取消收藏</span>
                <span class="collect">收藏</span>
              </div> 
            </div>
        </div>
        {% endfor %}
      </div>
    </div>
  </div>
{% endblock %}

{% block modal %} 
<!--删除 -->
<div class="modal fade" id="delModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body clearfix">
        <div class="title content_title"><img class="del_icon" src="../../public/img/tips.png"/>确认删除目录?</div>
        <div class="message">
          删除目录,目录下的内容不会被删除.如果其他目录下没有该内容,则内容会被移动至默认目录,如您想删除内容,可在目录详情页使用批量管理工具.
        </div>
      </div>
      <div class="modal-footer clearfix">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-danger">确认删除</button>
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
{% endblock %}