CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
                    username VARCHAR(255) NOT NULL UNIQUE,
                    email VARCHAR(255) NOT NULL UNIQUE,
                    password VARCHAR(255) NOT NULL);

CREATE TABLE IF NOT EXISTS exercises (id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
                                      name VARCHAR(255) NOT NULL,
                                      description VARCHAR(255),
                                      category VARCHAR(255) NOT NULL);

CREATE TABLE IF NOT EXISTS workouts (id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
                                     user_id INTEGER NOT NULL,
                                     exercise_id INTEGER NOT NULL,
                                     reps INTEGER NOT NULL,
                                     sets INTEGER NOT NULL,
                                     weight FLOAT,
                                     scheduled_at DATE,
                                     CONSTRAINT fk_user_workout FOREIGN KEY(user_id) REFERENCES users(id),
                                     CONSTRAINT fk_exercise_workout FOREIGN KEY(exercise_id) REFERENCES exercises(id));