const pg = require('pg');

const dbConfig = {
  host: 'localhost',
  user: 'mingwen',
  password: '',
  database: 'qandasdc'
};

const connection = new pg.Pool(dbConfig);

// connection.connect(err => {
//   if(err){
//     console.log(err);
//   } else {
//     console.log("connect pg");
//   }
// });

const getQuestions = (id) => {
  const command = `
    SELECT product_id,

      coalesce((
        SELECT json_agg(row_to_json(result)) FROM
        (
          SELECT question_id, question_body, question_date, asker_name, helpful AS question_helpfulness, reported,
            (SELECT json_object_agg(a.id,
              (SELECT row_to_json(aJson) FROM
              (SELECT id, body, date, answerer_name, helpfulness,
                coalesce((SELECT json_agg(row_to_json(photo)) FROM
            (
              SELECT ap.id, ap.url FROM answers_photos ap WHERE ap.answer_id = a.id
            ) photo
          ), '[]'
          ) AS Photos FROM answers WHERE id=a.id)aJson)) FROM answers a, questions q2 WHERE a.question_id=q2.question_id AND q2.question_id=q.question_id AND a.reported = FALSE)
           AS answers FROM questions q WHERE product_id = ($1) AND q.reported = FALSE
        ) result
      ), '[]'
      ) AS results FROM questions WHERE product_id = ($1);`;
  return connection.query(command, [id]);
};

const getAnswers = (id) => {
  const command = `
    SELECT question_id,
      coalesce((
        SELECT json_agg(row_to_json(result)) FROM
        (
          SELECT id AS answer_id, body, date, answerer_name, helpfulness,
          coalesce((
            SELECT json_agg(row_to_json(photo)) FROM
            (
              SELECT ap.id, ap.url FROM answers_photos ap WHERE ap.answer_id = a.id
            ) photo
          ), '[]'
          ) AS photos FROM answers a WHERE question_id = ($1) AND a.reported = FALSE
        ) result
      ), '[]'
      ) AS results FROM questions WHERE question_id = ($1)`;

  return connection.query(command, [id]);
};

const putAnswerReported = (id) => {
  const command = `
    UPDATE answers SET reported = TRUE WHERE id = ($1)
  `;
  return connection.query(command, [id]);
};

const putQuestionReported = (id) => {
  const command = `
    UPDATE questions SET reported = TRUE WHERE question_id = ($1)
  `;
  return connection.query(command, [id]);
};

const putAnswerHelpful = (id) => {
  const command = `
    UPDATE answers SET helpfulness = helpfulness + 1 WHERE id = ($1)`;
  return connection.query(command, [id]);
};

const putQuestionHelpful = (id) => {
  const command = `
    UPDATE questions SET helpful = helpful + 1 WHERE question_id = ($1)`;
  return connection.query(command, [id]);
};

const postQuestion = (body, name, id, email) => {
  const command = `
    INSERT INTO questions(product_id, question_body, question_date, asker_name, asker_email, reported, helpful) VALUES (($3), ($1), now(), ($2), ($4), FALSE, 0)`;
  return connection.query(command, [body, name, id, email]);
};

const postAnswer = (id, body, name, email, photos) => {
  const command = `
    INSERT INTO answers(question_id, body, date, answerer_name, answerer_email, reported, helpfulness) VALUES (($1), ($2), now(), ($3), ($4), FALSE, 0)`;
  return connection.query(command, [id, body, name, email]);
};

module.exports = {
  getQuestions,
  getAnswers,
  putAnswerReported,
  putQuestionReported,
  putAnswerHelpful,
  putQuestionHelpful,
  postQuestion,
  postAnswer,
};
