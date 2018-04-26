{% extends "../../layout.tpl" %}

{% block head %}
<title>小白party欢迎{{user.userName}}</title>

{% endblock %}

{% block body %}
<div class="panel panel-default reg-body">
  用户名： {{user.userName}} <br>
  id： {{user._id}}
  <a href="/userinfo/logout" class="btn btn-success">退出</a>
</div>

<script src="/js/user/index.js"></script>
{% endblock %}
