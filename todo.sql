-- Creates the SQL table
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR,
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

-- Inserts 5 todos
INSERT INTO todos (title, details, priority, created_at) VALUES ('Wake up!', 'Wake up in time to do everything I need to do before leaving for the day.', 4, '2017-08-11 13:00:00-5');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Morning Diabeties Stuff', 'Verify  CGM is still connected and working properly, test Glucose with test kit, record results, take morning Lantus shot, and take adjusting Novolog shot.', 5, '2017-08-11 13:00:00-5');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Become Pretty', 'Morning ritual of cleanliness.', 3, '2017-08-11 13:00:00-5', '2017-08-11 07:45:34-5');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Eat Something', 'Try and eat something before driving like a mad-man to the Iron Yard.', 1, '2017-08-11 13:00:00-5');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Avoid Traffic', 'Not that its possible, but try to avoid they other crazy drivers on the road.', 1, '2017-08-11 13:00:00-5');

-- Finds all incomplete todos
SELECT * FROM todos WHERE completed_at IS NULL;

-- Finds all todos with a priority greater then 1
SELECT * FROM todos WHERE priority > 1;

-- Updates the last item in the todos list to completed at 9AM.
UPDATE todos SET completed_at = '2017-08-11 09:00:00-5' WHERE id = 5;

-- Deletes any completed todos
DELETE FROM todos WHERE completed_at IS NOT NULL;

-- Just checks to see if the code actually works.
-- SELECT * FROM todos;
