CREATE TABLE prompts (
  ID SERIAL PRIMARY KEY,
  character VARCHAR(75) NOT NULL,
  setting VARCHAR(75) NOT NULL,
  problem VARCHAR(75) NOT NULL
);

NSERT INTO prompts (character, setting, problem)
   VALUES (‘a dishwasher’, ‘at a space port with an always open diner’, ‘whose brother is missing’), (‘A 1000 year-old wraith’, ‘in an underground city’, ‘who wants to find love’), (‘A former god of war’, ‘in a city in the trees’, ‘who needs a new identity’), (‘A wounded soldier’, ‘in a ruined temple’, ‘who dreams of travel’), (‘a dancer’, ‘in a scientifically advanced utopia’, ‘who has run out of medicine for their sick parent’), (‘An environmental scientist’, ‘in a war-torn desert’, ‘who wants revenge’), (‘A bad mechanic’, ‘on a premiere island vacation island’, ‘who's looking for a job’), (‘A freedom fighter’, ‘on a space cruise’, ‘who's going blind’), (‘A warlord’, ‘in a android factory’, ‘who's discovered a cure for terrible disease--at a terrible cost’);