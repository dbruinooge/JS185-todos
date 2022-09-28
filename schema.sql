CREATE TABLE todolists (
id serial PRIMARY KEY,
title text NOT NULL UNIQUE,
username TEXT NOT NULL
);

CREATE TABLE todos (
id serial PRIMARY KEY,
title text NOT NULL,
done boolean NOT NULL DEFAULT false,
username TEXT NOT NULL,
todolist_id integer
  NOT NULL
  REFERENCES todolists (id)
  ON DELETE CASCADE
);

CREATE TABLE users (
  username text PRIMARY KEY,
  password text NOT NULL
);
