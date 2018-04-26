<html>
  <head>
    <title>List demo</title>
    <link type="text/css" href="/public/css/common.css" />
  </head>
  <body>
    <ul class="news-view view">
      {% for item in dataList %}
        <li class="item">
          <a href="/demos/{{item.name}}">{{ item.name }}</a>
        </li>
      {% endfor %}
    </ul>

    <div>6666666</div>
  </body>
</html>
