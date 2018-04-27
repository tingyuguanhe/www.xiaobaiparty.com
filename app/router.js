// app/router.js
module.exports = app => {
  const { router, controller,middleware } = app;
  // const userRequired = middleware.userRequired();

  router.get('/mine', controller.mine.index);  //我的首页
  router.get('/news', controller.news.list);
  router.get('/error', controller.demos.error);
  router.get('/demos', controller.demos.list);
  router.get('/demos/:repo', controller.demos.detail);

  router.get('/user_catalog/:user_id', controller.userCatalog.index);  //他的目录
  
  router.get('/catalog_detail/:id', controller.catalogDetail.detail);     //目录详情

  router.get('/search', controller.search.index)// 搜索
  router.get('/notices', controller.notices.index)// 消息通知
  router.get('/', controller.find.index)// 发现（首页）
  router.get('/upload', controller.upload.index)// 上传文件
  router.post('/upload_file', controller.upload.upload)// 上传文件
  
  // rest接口
  router.post('/api/v1/users/login', controller.find.index);
};
