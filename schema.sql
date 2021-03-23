
CREATE DATABASE qandasdc;

\c qandasdc;

CREATE TABLE questions (
  question_id serial primary key,
  product_id integer,
  question_body varchar(1000),
  question_date date,
  asker_name varchar(60),
  asker_email varchar(60),
  reported boolean,
  helpful integer
);

CREATE TABLE answers (
  id serial primary key,
  question_id integer references questions(id),
  body varchar(1000),
  date date,
  answerer_name varchar(60),
  answerer_email varchar(60),
  reported boolean,
  helpfulness integer
);

CREATE TABLE photos (
  id serial primary key,
  answer_id integer references answers(id),
  url varchar(255)
);

CREATE INDEX index_questions_productid ON questions(product_id);

CREATE INDEX index_answer_questionid ON answers(question_id);

CREATE INDEX index_photo_answerid ON answers_photos(answer_id);