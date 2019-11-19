exports.success = function (values, res) {
  const data = {
    status: 200,
    values,
  };
  res.json(data);
  res.end();
};

exports.successPost = function (insertId, res) {
  const data = {
    status: 200,
    insertId,
  };
  res.json(data);
  res.end();
};
