const express = require('express');
const cors = require('cors');
const { pool } =require('./config');
const { response } = require('express');

const server = express();

server.use(cors())

server.set('port', process.env.PORT || 3001);
server.locals.title = 'Strange prompts'

server.listen(server.get('port'), () => {
  console.log(`${server.locals.title} is now listening on ${server.get('port')}`)
});

//Routes
server.get('/', (req, res) => {
  res.status(200).send(`You've reached the ${server.locals.title} API `)
});

server.get('/api/v1/prompts', (req, res) => {
  let prompts;
  pool.query('SELECT * FROM prompts', (error, response) => {
    console.log(resonse);

    prompts = response.rows;
    response.status(200).send({ prompts });
  })
})