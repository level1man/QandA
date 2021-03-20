const express = require('express');
const axios = require('axios');

let app = express();

const db = require('../database');

const PORT = 3000;

//app.use(express.static(__dirname + '/../client/dist'));
app.use(express.json());

// get question list
app.get('/api/qa/questions/:productId', (req, res) => {
  const { productId } = req.params;
  db.getQuestions(productId)
    .then((results) => res.send(results.rows[0]))
    .catch(() => res.sendStatus(500));
});

// get answer list
app.get('/api/moreAnswers/:questId', (req, res) => {
  const { questId } = req.params;
  db.getAnswers(questId)
    .then((results) => res.send(results.rows[0]))
    .catch(() => res.sendStatus(500));
});

// report answer
app.put('/api/reportAnswer/:answerId', (req, res) => {
  const { answerId } = req.params;
  db.putAnswerReported(answerId)
    .then(() => res.sendStatus(204))
    .catch(() => res.sendStatus(500));
});

// report question
app.put('/api/reportQuestion/:questionId', (req, res) => {
  const { questionId } = req.params;
  db.putQuestionReported(questionId)
    .then(() => res.sendStatus(204))
    .catch(() => res.sendStatus(500));
});

// mark answer helpful
app.put('/api/helpfulAnswer/:answerId', (req, res) => {
  const { answerId } = req.params;
  db.putAnswerHelpful(answerId)
    .then(() => res.sendStatus(204))
    .catch(() => res.sendStatus(500));
});

// mark question helpful
app.put(`/api/helpfulQuestion/:questId`, (req, res) => {
  const { questId } = req.params;
  db.putQuestionHelpful(questId)
    .then(() => res.sendStatus(204))
    .catch(() => res.sendStatus(500));
});
// add an answer
// axios.post(`/api/qa/questions/${id}/answers`, {
//   params: {
//     body: answerEsc,
//     name: nameEsc,
//     email: emailEsc,
//     photos: [],
//   },
// })

app.post('/api/qa/questions/:questId/answers', (req, res) => {
  const { questId } = req.params;
  const { body, name, email, photos} = req.body.params;
  db.postAnswer(questId, body, name, email, photos)
    .then(() => res.send(201))
    .catch(() => res.sendStatus(500));
});


// add a question
app.post('/api/addQuestion', (req, res) => {
  const { body, name, product_id, email } = req.body.params;
  db.postQuestion(body, name, product_id, email)
    .then(() => res.send(201))
    .catch(() => res.sendStatus(500));
});


app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
