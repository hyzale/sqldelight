CREATE TABLE test (
  id INTEGER PRIMARY KEY,
  value INTEGER
);

INSERT INTO test
VALUES (1,2)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO test
  (id, value)
VALUES (:id, :value)
ON DUPLICATE KEY UPDATE value = value + VALUES(value);
