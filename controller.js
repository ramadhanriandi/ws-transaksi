const response = require('./res');
const connection = require('./conn');

exports.findAllUserTransaction = function (req, res) {
  const { userId } = req.query;

  connection.query('SELECT * FROM transactions where user_id = ?',
    [userId],
    (error, rows) => {
      if (error) {
        console.log(error);
      } else {
        response.success(rows, res);
      }
    });
};

exports.createTransaction = function (req, res) {
  const {
    virtualAccount, movieId, schedule, chair, userId,
  } = req.body;

  const currentTime = new Date();
  const createdAt = `${currentTime.getFullYear()}-${currentTime.getMonth() + 1}-${currentTime.getDate()} ${currentTime.getHours()}:${currentTime.getMinutes()}:${currentTime.getSeconds()}`;

  connection.query('INSERT INTO transactions (virtual_account, movie_id, schedule, chair, created_at, user_id) values (?, ?, ?, ?, ?, ?)',
    [virtualAccount, movieId, schedule, chair, createdAt, userId],
    (error, result) => {
      if (error) {
        console.log(error);
      } else {
        response.successPost(result.insertId, res);
      }
    });
};

exports.updateTransaction = function (req, res) {
  const { id, status } = req.body;

  connection.query('UPDATE transactions SET status = ? WHERE id = ?',
    [status, id],
    (errorUpdate) => {
      if (errorUpdate) {
        console.log(errorUpdate);
      } else {
        response.success(status, res);
      }
    });
};

exports.index = function (req, res) {
  response.success('Hello world!', res);
};
