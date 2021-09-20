# Strange Prompts for a Strange Planet API
### Sci-fi writing prompts generator
### [View The Deployed Database Here](https://strange-prompts-api.herokuapp.com/api/v1/prompts)
### [Our Front-End Repo](https://github.com/Andrey-1992/strange-prompts-ui)

## Overview
The goal of this Mod3 group [project](https://frontend.turing.edu/projects/module-3/stretch.html) is to select a new technology to learn independently. The Strange prompts api was an opportunity for us to learn how to create a database and build the API to access it. Our simple server consists of two tables that are divided into three columns (character, setting and problem) to create and store random science fiction prompts. This API was then deployed to Heroku and is constructed using Express to set up the server and PostgreSQL / SQL to create relational databases.
[Project Rubric](https://frontend.turing.edu/projects/module-3/stretch.html)

## Set Up
```szh 
git clone git@github.com:rachelJensen/strange-prompts-api.git
cd strange-prompts-api
npm install 
```
you'll need to have postgresql installed for the next part.
[Install Instructions](https://www.postgresql.org/download/macosx/)
```zsh
run psql postgres 
``` 
Create a new user and password and give them create database access:
```
CREATE ROLE api_user WITH LOGIN PASSWORD 'password';
ALTER ROLE api_user CREATEDB;
```
Log out of the root user and log in to the newly created user:
```
\q
psql -d postgres -U <api_user>
```
Create a local database and log into it:
```
CREATE DATABASE prompts_api;
\c prompts_api
```
Run the commands to create a table for ```prompts``` found in init.sql in your terminal, then do the same for ```favorites```.
```
CREATE TABLE prompts(
  ID SERIAL PRIMARY KEY,
  character VARCHAR(75) NOT NULL,
  setting VARCHAR(75) NOT NULL,
  problem VARCHAR(75) NOT NULL
);

CREATE TABLE favorites(
  ID SERIAL PRIMARY KEY,
  character int NOT NULL,
  setting int NOT NULL,
  problem int NOT NULL
);
```
Open a new new terminal window and create a new file in this directory with ```touch .env``` and fill it out like so:
```
DB_USER=''
DB_PASSWORD=''
DB_HOST=localhost
DB_PORT=5432
DB_DATABASE=prompts_api
```
Run ```npm i cors dotenv express pg``` Go to ```config.js``` and comment lines 10-13. Make sure that the value of the key ```database``` in ```const config``` matches the database name that you gave the database you created earlier. ```Run npm start```

## Endpoints
  |             Endpoint              |              Use             |   Method   |  Required Properties for Request |
  |-----------------------------------|:----------------------------:|:----------:|:--------------------------------:|
  |       `/api/v1/prompts`           |      get all prompts         |    GET     |               none               |
  |       `/api/v1/favorites`         |  get all favorites prompts   |    GET     |               none               |
  |       `/api/v1/favorites`         | post new prompt in favorites |    POST    | `{"character": "", "setting": "", "problem": ""}` |
  |       `/`                         | delete prompt from favorites |    DELETE  | `{"id": interger}`               |


## Tools & Technologies
<p text-align="center"> 
    <img alt="JavaScript Badge" src="https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=000&style=flat-square" />
    <img src="https://img.shields.io/badge/Express-000?logo=express&logoColor=fff&style=flat-square" alt="Express Badge">
    <img alt="PostgreSQL" src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=fff&style=flat-square" />
    <img alt="Postman" src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=fff&style=flat-square" />
</p>

## Wins
- We were able to add the DELETE functionality (*extension from MVP).
- We were able to recongonize when what we had started wasn't working and pivot to alternative solutions. 
- We gained a glimpse of a "Full Stack" application.  

##Challenges
- Finding helpful resources within the level of learning that we were at.
- Learning and implementing a working application in 10 days.

## Future Extensions
- Refine and add data to have more prompt ideas 

## Authors

- [Samantha Brown](https://github.com/Samantha-Brown)  
- [Rachel Jensen](https://github.com/rachelJensen)
- [Andrey Bermudez](https://github.com/Andrey-1992)

