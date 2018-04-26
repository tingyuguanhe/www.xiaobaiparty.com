<!-- app/view/notices.tpl 上传文件-->

{% extends "../layout.tpl" %}
{% block head %}
  <title>上传文件</title>
  <link rel="stylesheet" type="text/css" href="/public/css/upload.css"/>
{% endblock %}

{% block breadcrumb %}
  <div class="breadcrumb">
    <div> 首页 > <a href="javascript:;">上传文件</a></div>
  </div>
{% endblock %}

{% block body %}
<div class="container">
    <div class="content_wrap">
        <form class="upload_wrap">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label for="exampleInputEmail1">文件标题</label>
                    </div>
                    <div class="col-md-10">
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="请输入文件标题">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label for="exampleInputPassword1">粘贴地址</label>
                    </div>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="请输入地址">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <div></div> 
                        <input id="input-b1" name="input-b1" type="file" class="file">
                        <div class="file_box"></div>                    
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label><span>*</span>所属目录</label>
                    </div>
                    <div class="col-md-10">
                    <ul class="clearfix">
                        <li>目录1 <span class="close_icon"><img src="../public/img/close.png"></span></li>
                        <li>目录22222 <span class="close_icon"><img src="../public/img/close.png"></span></li>
                        <li data-toggle="modal" data-target="#selectFolderModal"><span class="add_new_folder"><img src="../public/img/add_mulu.png"/></span></li>
                    </ul>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label for="intro_detail">详细描述</label>
                    </div>
                    <div class="col-md-10">
                        <textarea class="form-control" id="intro_detail" rows="6" placeholder="请输入"></textarea>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label for="intro_detail"></label>
                    </div>
                    <div class="col-md-10 upload_file_btn">
                        <button type="submit" class="btn">立即上传</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>


{% endblock %}

{% block modal %} 
<!-- 选择目录弹框 -->
<div class="modal fade" id="selectFolderModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <div class="title content_title">选择要收藏的目录</div>
        
        <ul class="">
            {% for item in folders%}
            <li>
                <div class="checkbox">
                    <label>
                        {% if item.checked %}
                        <input type="checkbox" checked="checked">{{item.name}}
                        {% else %}
                        <input type="checkbox">{{item.name}}
                        {% endif %}
                    </label>
                </div>
            </li>
            {% endfor %}
        <ul>
      </div>
      <div class="modal-footer clearfix">
        <div class="add_new_folder pull-left">
            <img src="../../public/img/xinjian.png"/>
            <span class="blue_color">新建目录</span>
        </div>
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary">确定</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
{% endblock%}
