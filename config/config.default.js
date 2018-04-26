// const Raven = require('raven');
// Raven.config('http://be5f2c00e9dd4d69b518392d05e039e3:8e8d15bd7d76416fbf113d1334bd2473@sentry.xiaoyanzhang.com/4').install();

exports.keys = 'asdfjklasdkfj';
// 添加 view 配置
exports.view = {
  defaultViewEngine: 'nunjucks',
  mapping: {
    '.tpl': 'nunjucks',
  },
  onerror: {
    all(err, ctx) {
      console.log('on error' + err);
      // Raven.captureException(err, function (err, eventId) {
      //   console.log('Reported error ' + eventId);
      // });
    },
  }
};
