CREATE TABLE prompts(
  ID SERIAL PRIMARY KEY,
  character VARCHAR(75) NOT NULL,
  setting VARCHAR(75) NOT NULL,
  problem VARCHAR(75) NOT NULL
);

INSERT INTO prompts(character, setting, problem)
   VALUES('A dishwasher', 'at a space port with an always open diner', 'whose brother is missing');
  

INSERT INTO prompts(character, setting, problem)
   VALUES('A thousand year old wraith', 'in an underground city', 'who wants to find love');

INSERT INTO prompts(character, setting, problem)
   VALUES('A former god of war', 'in a city in the trees', 'who needs a new identity'), ('A wounded soldier', 'in a ruined temple', 'who dreams of travel'), ('A dancer', 'in a scientifically advanced utopia', 'who has run out of medicine for their sick parent');

INSERT INTO prompts(character, setting, problem) 
   VALUES('An environmental scientist', 'in a war-torn desert', 'who wants revenge for the death of their friend'), ('A bad mechanic', 'on a premiere island vacation island', 'who is looking for a job'), ('A freedom fighter', 'on a space cruise', 'who is going blind');


INSERT INTO prompts(character, setting, problem) 
   VALUES('An alien', 'on an island melting into a sun', 'who only has one week to live'), 
   ('A shark-human hybrid', 'in a frozen wasteland', 'whose companion is a polar bear'), 
   ('A living weapon', 'trapped in an experimental bubble', 'who has never left their family''s compound'), 
   ('A movie star', 'in a uncharted canyon', 'who kills anyone they touch'), 
   ('A professional reaper', 'on a prehistoric planet', 'whose best friend has been taken'), 
   ('A spy', 'in a futuristic suburb', 'who runs a failing junkyard'), 
   ('A prince''s clone', 'in a perfect society', 'who is being experimented on against their will'), 
   ('A farmer', 'on a secret island', 'where the sun does not shine'), 
   ('A musician', 'in a bubble', 'who is playing a concert'), 
   ('A thief', 'in an desert land', 'who is trying to work'), 
   ('A dentist', 'on an airplane', 'who is removing a tooth'), 
   ('A magician', 'in a dream', 'who is performing a trick'), 
   ('A politician', 'on a dinosaurs island', 'who is making laws'), 
   ('A king', 'on a spaceship', 'who is looking for a crown'), 
   ('A runner', 'in a labyrinth', 'who is competing in a race'), 
   ('An eskimo', 'on a desert', 'who is building an igloo'), 
   ('A teacher', 'on a helicopter', 'who is teaching a machine'), 
   ('An animal trainer', 'on a bus station', 'who is traveling to another planet'), 
   ('An alien baby', 'in a thai food restaurant', 'who is having nightmares'),
   ('The last postal delivery person', 'on an abandoned research ship', 'who can only eat insects'), 
   ('A new cyborg', 'in an underwater ocean with a frozen surface', 'who is going back to school'), 
   ('A former Queen', 'on a floating debris field', 'who lost all their power'), 
   ('A humanitarian', 'on an intergalaxy mission', 'who needs one more arm'), 
   ('A hyper-intelligent squid', 'on a planet where technology won''t work', 'who is seeking the lost secret to eternal health'), 
   ('An earthling size crow', 'in a time machine', 'who is invisible'), 
   ('A cult leader', 'in the midst of a solar storm', 'who compulsively steals'), 
   ('An AI', 'in cyberspace', 'who has lost all their memories'), 
   ('A cybernetic oracle', 'on a multi-generational space migration', 'who wants to be freed from their immortality'), 
   ('An elderly farmer', 'on an active volcano', 'who is addicted to a substance that gives them visions of catastrophe'), 
   ('A journalist', 'in the aftermath of the Yellowstone supervolcano eruption', 'who has had their voice stolen'),
   ('A young mother', 'on a planet pertetually ravaged by extreme weather', 'who has been disinherited'), 
   ('A doctor specialitzed in cybernetics', 'in a dimension without time', 'who is searching for their lost pet'), 
   ('A 17 year old student', 'attending an elite academy on the planet', 'who is living a double life'), 
   ('A custodian', 'on the international space station', 'who is allergic to the sun'), 
   ('A Park Ranger', 'in the gas swamps of Venus', 'who stumbles upon space cowboys');

CREATE TABLE favorites(
  ID SERIAL PRIMARY KEY,
  character int NOT NULL,
  setting int NOT NULL,
  problem int NOT NULL
);