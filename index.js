const express = require('express');
const cors = require('cors');
const { pool } =require('./config');

const server = express();

server.use(cors())
server.use(express.json())

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

server.get('/api/v1/favorites', (req, res) => {
  pool.query('SELECT * FROM favorites', (error, response) => {
    res.status(200).json(response.rows);
  })
})

// server.post('/api/v1/favorites', (req, res) => {
  // const reqParams = ['character', 'setting', 'problem'];
  // let error = false;
  // reqParams.forEach((param, index) => {
  // if ( !req.body[param] && param ) {
  //   res.status(422).send('Please send all required data');
  //   error = true;
  // } else if (index === 2 && !error) {
  // const { character, setting, problem } = req.body;
  // pool.query(`INSERT INTO favorites(character, setting, problem) VALUES ('${character}', '${setting}', ${problem})`,
  // (err, response) => {
  //   console.log(err, response)
  //   err
  //   ? res.status(500).send('Database Error')
  //   : res.status(200).send({ character, setting, problem })
  // })
  //   console.log(req.body)
 // }


server.post('/api/v1/favorites', (req, res) => {
  const { character, setting, problem } = req.body

  pool.query('INSERT INTO favorites(character, setting, problem) VALUES($1, $2, $3)', [character, setting, problem], (error, results) => {
    if(error) {
      throw error
    } else {
      response.status(201).send('Your favorite has been added')
    }
  })
})


server.listen(server.get('port'), () => {
  console.log(`${server.locals.title} is now listening on ${server.get('port')}`)
});
