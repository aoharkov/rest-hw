DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS pomodoros CASCADE;

CREATE TABLE IF NOT EXISTS users
(
    id    BIGSERIAL PRIMARY KEY,
    nickname  VARCHAR(30) NOT NULL,
    password VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS pomodoros
(
    id    BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    description  VARCHAR(250),
    length INT NOT NULL,
    complited_date TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);