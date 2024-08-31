CREATE OR REPLACE TABLE fanatsy.characters_alive
AS(
  SELECT *
  FROM fanatsy.characters
  WHERE is_alive = true
);

CREATE OR REPLACE TABLE fanatsy.characters_dead
AS(
  SELECT *
  FROM fanatsy.characters
  WHERE is_alive = false
);

CREATE OR REPLACE TABLE fanatsy.characters_level
AS(
  SELECT *
  FROM fanatsy.characters
  WHERE level > 20
);

CREATE OR REPLACE TABLE fanatsy.characters_mentor
AS(
  SELECT *
  FROM fanatsy.characters
  WHERE mentor_id IS NOT NULL 
);
