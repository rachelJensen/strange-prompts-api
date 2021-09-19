# Strange Prompts for a Strange Planet API
### Sci-fi writing prompts generator
### [View The Deployed Database Here](https://strange-prompts-api.herokuapp.com/api/v1/prompts)
### [Our Front-End Repo](https://github.com/Andrey-1992/strange-prompts-ui)
## Overview
The Strange Prompts API allow us to create a database with a table divided in three rows (character, setting and problem) to create random fiction prompts.This app was created as a back end for our stretch-tech Mod 3 FE Turing project. This API was then deployed to Heroku and is constructed using Express to set up the server and PostgreSQL / SQL to create relational databases.
[Project Rubric](https://frontend.turing.edu/projects/module-3/stretch.html)
## Set Up
```szh 
git clone git@github.com:rachelJensen/strange-prompts-api.git
cd strange-prompts-api
npm install 
```
```zsh
Run with: nodemon index.js
``` 
## Endpoints
  |             Endpoint              |              Use             |   Method   |  Required Properties for Request |
  |-----------------------------------|:----------------------------:|:----------:|:--------------------------------:|
  |       `/api/v1/prompts`           |      get all prompts         |    GET     |               none               |
  |       `/api/v1/favorites`         |  get all favorites prompts   |    GET     |               none               |
  |       `/api/v1/favorites`         | post new prompt in favorites |    POST    | `{"character": "", "setting": "", "problem": ""}` |
  |       `/`                         | delete prompt from favorites |    DELETE  | `{"id": interger}`               |
## Tools & Technologies
 - SQL
 - PostgreSQL
 - Express
 - Heroku
 - Javascript

## Authors

- [@Samantha Brown](https://github.com/Samantha-Brown)  
- [@Rachel Jensen](https://github.com/rachelJensen)
- [@Andrey Bermudez](https://github.com/Andrey-1992)

