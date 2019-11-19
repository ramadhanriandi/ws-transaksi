module.exports = function (app) {
  const controller = require('./controller');

  app.route('/')
    .get(controller.index);

  app.route('/transactions')
    .get(controller.findAllUserTransaction);

  app.route('/transactions')
    .post(controller.createTransaction);

  app.route('/transactions')
    .put(controller.updateTransaction);
};
