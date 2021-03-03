\connect "ourDB";


CREATE TABLE "public"."users" (
    "email" character(50) NOT NULL,
    "password" character(50) NOT NULL,
    CONSTRAINT "users_pkey" PRIMARY KEY ("email")
) WITH (oids = false);

INSERT INTO "users" ("email", "password") VALUES
('kca2@njit.edu                                                              ',	'testing'),
('test@njit.edu                                                              ',	'test');