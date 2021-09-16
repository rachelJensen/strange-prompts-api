CREATE TABLE prompts(
  ID SERIAL PRIMARY KEY,
  character VARCHAR(75) NOT NULL,
  setting VARCHAR(75) NOT NULL,
  problem VARCHAR(75) NOT NULL
);

INSERT INTO prompts(character, setting, problem)
   VALUES('a dishwasher', 'at a space port with an always open diner', 'whose brother is missing');
  

INSERT INTO prompts(character, setting, problem)
   VALUES('A thousand year old wraith', 'in an underground city', 'who wants to find love');

INSERT INTO prompts(character, setting, problem)
   VALUES('A former god of war', 'in a city in the trees', 'who needs a new identity'), ('A wounded soldier', 'in a ruined temple', 'who dreams of travel'), ('A dancer', 'in a scientifically advanced utopia', 'who has run out of medicine for their sick parent');

INSERT INTO prompts(character, setting, problem) VALUES('An environmental scientist', 'in a war-torn desert', 'who wants revenge for the death of their friend'), ('A bad mechanic', 'on a premiere island vacation island', 'who is looking for a job'), ('A freedom fighter', 'on a space cruise', 'who is going blind');