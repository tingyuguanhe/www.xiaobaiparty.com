<!-- app/view/index.tpl 我的首页-->

{% extends "../layout.tpl" %}
{% block head %}
  <title>我的</title>
  <link rel="stylesheet" type="text/css" href="/public/css/mine.css"/>
  <script src="../../public/js/mine.js"></script>
{% endblock %}

{% block breadcrumb %}
  <div class="breadcrumb">
    <div> 首页 > <a href="javascript:;">我的</a></div>
  </div>
{% endblock %}

{% block body %}
<div class="mine_page">
    <div class="user_info">
        <div class=" bg bg-blur"></div>
        <div class="operate_icon">
            <img class="edit" src="../../public/img/edit.png"/>
            <img data-toggle="modal" data-target="#shareModal" class="share" src="../../public/img/Share.png"/>
        </div>
        <div class="content content_front">
            <span class="img_wrap"><img src="../public/img/test.jpg"></span>
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
                <ul class="clearfix nav_link">
                    <li class="active" data-name="folder">
                        <span>我的目录</span> 
                    </li>
                    <li data-name="collect"><span>我的收藏</span></li>
                    <li data-name="purse"><span>我的钱包</span></li>
                </ul>  
            </div>
            <!--我的目录、我的收藏、我的钱包-->
            <div class="col-md-12">
            <!--我的目录-->
                <div class="folders_list clearfix">
                   <div>
                     <span class="private_label"><img class="lock_icon" src="../../public/img/lock.png"/>私密</span>
                     <img src="../public/img/default_file.png">
                     <div class="folder_title">默认目录</div>
                     <div class="folder_msg gray_color">内容 333</div>
                   </div>
                   <div>
                     <span class="sub">订阅</span>
                     <img src="../public/img/normal_file.png">
                     <div class="folder_title">
                        汽车IT业内超牛逼的文章合集
                        <img data-toggle="modal" data-target="#editFolderModal" class="edit_folder" src="../../public/img/edit_mulu.png"/>
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
                   <span class="add_round_icon" data-toggle="modal" data-target="#cerateFolderModal">
                        <img src="../../public/img/add.png"/>
                    </span>
                </div>

            <!--我的钱包-->
                <div class="purse_list display_none">
                    <div class="title_info clearfix">
                        <div class="pull-left">
                            <div class="last_money">余额</div>
                            <div class="money">¥0.00</div>
                        </div>
                        <div class="pull-right ope_btns">
                            <button type="button" class="btn btn-primary" onclick="showPayOptions()">充值</button>
                            <button type="button" class="btn btn-default">提现</button>
                        </div>
                    </div>
                    <div class="deal_details">
                        <div class="title">交易记录</div>
                        <div class="line"></div>
                        <table style="display:none;">
                            <tbody>
                               
                                <tr>
                                    <td width="25%">2018-03-02 18:23:22</td>
                                    <td width="15%">提现</td>
                                    <td width="40%">BF1223456856846852258S</td>
                                    <td width="20%">¥10.00</td>
                                </tr>
                                <tr>
                                    <td width="25%">2018-03-02 18:23:22</td>
                                    <td width="15%">提现</td>
                                    <td width="40%">BF1223456856846852258S</td>
                                    <td width="20%">¥10.00</td>
                                </tr>
                                <tr>
                                    <td width="25%">2018-03-02 18:23:22</td>
                                    <td width="15%">提现</td>
                                    <td width="40%">BF1223456856846852258S</td>
                                    <td width="20%">¥10.00</td>
                                </tr>
                                <tr>
                                    <td width="25%">2018-03-02 18:23:22</td>
                                    <td width="15%">提现</td>
                                    <td width="40%">BF1223456856846852258S</td>
                                    <td width="20%">¥10.00</td>
                                </tr>
                                <tr>
                                    <td width="25%">2018-03-02 18:23:22</td>
                                    <td width="15%">提现</td>
                                    <td width="40%">BF1223456856846852258S</td>
                                    <td width="20%">¥10.00</td>
                                </tr>
                                <tr>
                                    <td width="25%">2018-03-02 18:23:22</td>
                                    <td width="15%">提现</td>
                                    <td width="40%">BF1223456856846852258S</td>
                                    <td width="20%">¥10.00</td>
                                </tr>
                               
                            </tbody>
                        </table>
                        <div class="deal_null">
                            <img src="../../public/img/jiaoyi.png"/>
                            <div>暂无交易记录</div>
                        </div>
                    </div> 
                </div>
            <!--我的粉丝-->
                <div class="list_wrap fans_list display_none">
                    <div class="title">我的粉丝<span>/ 6</span></div>
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

                 <!--我的关注-->
                <div class="list_wrap follow_list display_none">
                    <div class="title">我的关注<span>/ 6</span></div>
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

<!-- 新建目录弹框 -->
<div class="modal fade" id="cerateFolderModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body clearfix">
        <div class="title content_title">新建目录</div>
        <div><input type="text" class="form-control folder_input"/></div>
        <div class="pull-right private_wrap">
            <input type="checkbox"/>
            <span class="set_private">设为私密</span>
        </div>
      </div>
      <div class="modal-footer clearfix">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- 修改目录弹框 -->
<div class="modal fade" id="editFolderModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body clearfix">
        <img src="../../public/img/normal_file.png" class="pull-left"/>
        <div class="pull-left">
            <div><input type="text" class="form-control folder_input"/></div>
            <div class="pull-left private_wrap">
                <input type="checkbox"/>
                <span class="set_private">设为私密</span>
            </div>
        </div>
      </div>
      <div class="modal-footer clearfix">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- 充值弹框 -->
<div class="modal fade" id="rechargeModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body clearfix">
        <div class="title content_title">账户充值</div>
        <!--选择充值金额-->
        <div class="recharge_select">
            <div class="recharge_tip">选择充值金额</div>
            <ul class="recharge_options">
                {% for item in payAmountOptions %}
                <li onclick="pay()"><button><span class="unit">¥</span>{{item.money}}</button></li>
                {% endfor %}
            </ul>
        </div>
        <!--扫码支付-->
        <div class="pay display_none">
            <div class="money"><b><span class="unit">¥</span>10</b></div>
            <div class="tip">请使用微信支付尽快完成付款</div>
            <img src="../../public/img/code.png"/>
            <div class="wx_tip">微信扫一扫,轻松完成支付</div>
        </div>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
{% endblock%}


