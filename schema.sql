/* #######################################
# 檔名: schema.sql
# 功能: create tables to store data
# TODO: No
####################################### */

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  labels TEXT DEFAULT "" -- 標籤以"aaa bbb ccc ..."格式儲存為字串
);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  due TEXT, -- 死線，以"yyyy/mm/dd"格式儲存為字串
  body TEXT,
  done BOOLEAN DEFAULT 0,
  labels TEXT,
  FOREIGN KEY (author_id) REFERENCES user (id)
);