SELECT 'CREATE DATABASE covidtesting'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'mydb')\gexec

CREATE DATABASE covidtesting;
\c example
CREATE TABLE users(
    email VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL
);
