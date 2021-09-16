const express = require('express');
const cors = require('cors');
const { pool } =require('./config');

const server = express();

server.use(cors())

server.set('port', process.env.PORT || 3001);
server.locals.title = 'Strange prompts'


//Routes
server.get('/', (req, res) => {
  res.status(200).send(`You've reached the ${server.locals.title} API `)
});

server.get('/api/v1/prompts', (req, res) => {
  pool.query('SELECT * FROM prompts', (error, response) => {

    // if (error) {
    //   console.log(error);
    //   throw error;
    // }

    res.status(200).json(response.rows);
  })
})


server.listen(server.get('port'), () => {
  console.log(`${server.locals.title} is now listening on ${server.get('port')}`)
});