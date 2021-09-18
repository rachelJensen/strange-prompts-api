const express = require('express');
const cors = require('cors');
const { pool } =require('./config');
const { response } = require('express');

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
    if (error) {
      throw error;
    }

    res.status(200).json(response.rows);
  })
})

server.get('/api/v1/favorites', (req, res) => {
  pool.query('SELECT * FROM favorites', (error, response) => {
    res.status(200).json(response.rows);
  })
})

server.post('/api/v1/favorites', (req, res) => {
  const { character, setting, problem } = req.body;

  pool.query('INSERT INTO favorites(character, setting, problem) VALUES($1, $2, $3)', [character, setting, problem], (error, results) => {
    if(error) {
      throw error
    } else {
      res.status(201).send('Your favorite has been added')
    }
  })
})

server.delete('/', (req, res) => {
  const { id } = req.body;
  pool.query(`DELETE FROM favorites WHERE id = $1`, [id], (error, results) => {
    if (error) {
      throw error
    }
    res.status(200).send(`Favorite with ID: ${id} deleted`)
  })
})


server.listen(server.get('port'), () => {
  console.log(`${server.locals.title} is now listening on ${server.get('port')}`)
});
