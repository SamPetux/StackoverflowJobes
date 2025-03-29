CREATE DATABASE IF NOT EXISTS it_professions_db;

\c it_professions_db;

CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE professions (
    prof_id SERIAL PRIMARY KEY,
    prof_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE languages (
    language_id SERIAL PRIMARY KEY,
    language_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE respondents (
    respondent_id SERIAL PRIMARY KEY,
    year INT NOT NULL,
    country_id INT NOT NULL,
    prof_id INT NOT NULL,
    experience INT NOT NULL,
    other_languages TEXT,
    compensation NUMERIC(15, 2),
    adjusted_compensation NUMERIC(15, 2),
    FOREIGN KEY (country_id) REFERENCES countries(country_id),
    FOREIGN KEY (prof_id) REFERENCES professions(prof_id)
);

CREATE TABLE respondent_languages (
    respondent_id INT NOT NULL,
    language_id INT NOT NULL,
    PRIMARY KEY (respondent_id, language_id),
    FOREIGN KEY (respondent_id) REFERENCES respondents(respondent_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id)
);

INSERT INTO countries (country_name) VALUES ('Argentina');
INSERT INTO countries (country_name) VALUES ('Armenia');
INSERT INTO countries (country_name) VALUES ('Australia');
INSERT INTO countries (country_name) VALUES ('Austria');
INSERT INTO countries (country_name) VALUES ('Bangladesh');
INSERT INTO countries (country_name) VALUES ('Belarus');
INSERT INTO countries (country_name) VALUES ('Belgium');
INSERT INTO countries (country_name) VALUES ('Bolivia');
INSERT INTO countries (country_name) VALUES ('Bosnia and Herzegovina');
INSERT INTO countries (country_name) VALUES ('Brazil');
INSERT INTO countries (country_name) VALUES ('Bulgaria');
INSERT INTO countries (country_name) VALUES ('Canada');
INSERT INTO countries (country_name) VALUES ('Chile');
INSERT INTO countries (country_name) VALUES ('China');
INSERT INTO countries (country_name) VALUES ('Colombia');
INSERT INTO countries (country_name) VALUES ('Costa Rica');
INSERT INTO countries (country_name) VALUES ('Croatia');
INSERT INTO countries (country_name) VALUES ('Cyprus');
INSERT INTO countries (country_name) VALUES ('Czech Republic');
INSERT INTO countries (country_name) VALUES ('Denmark');
INSERT INTO countries (country_name) VALUES ('Dominican Republic');
INSERT INTO countries (country_name) VALUES ('Ecuador');
INSERT INTO countries (country_name) VALUES ('Egypt');
INSERT INTO countries (country_name) VALUES ('El Salvador');
INSERT INTO countries (country_name) VALUES ('Estonia');
INSERT INTO countries (country_name) VALUES ('Finland');
INSERT INTO countries (country_name) VALUES ('France');
INSERT INTO countries (country_name) VALUES ('Georgia');
INSERT INTO countries (country_name) VALUES ('Germany');
INSERT INTO countries (country_name) VALUES ('Greece');
INSERT INTO countries (country_name) VALUES ('Hungary');
INSERT INTO countries (country_name) VALUES ('India');
INSERT INTO countries (country_name) VALUES ('Indonesia');
INSERT INTO countries (country_name) VALUES ('Iran');
INSERT INTO countries (country_name) VALUES ('Ireland');
INSERT INTO countries (country_name) VALUES ('Israel');
INSERT INTO countries (country_name) VALUES ('Italy');
INSERT INTO countries (country_name) VALUES ('Japan');
INSERT INTO countries (country_name) VALUES ('Jordan');
INSERT INTO countries (country_name) VALUES ('Latvia');
INSERT INTO countries (country_name) VALUES ('Lebanon');
INSERT INTO countries (country_name) VALUES ('Lithuania');
INSERT INTO countries (country_name) VALUES ('Macedonia');
INSERT INTO countries (country_name) VALUES ('Malaysia');
INSERT INTO countries (country_name) VALUES ('Malta');
INSERT INTO countries (country_name) VALUES ('Mexico');
INSERT INTO countries (country_name) VALUES ('Moldavia');
INSERT INTO countries (country_name) VALUES ('Morocco');
INSERT INTO countries (country_name) VALUES ('Myanmar');
INSERT INTO countries (country_name) VALUES ('Nepal');
INSERT INTO countries (country_name) VALUES ('Netherlands');
INSERT INTO countries (country_name) VALUES ('New Zealand');
INSERT INTO countries (country_name) VALUES ('Norway');
INSERT INTO countries (country_name) VALUES ('Pakistan');
INSERT INTO countries (country_name) VALUES ('Peru');
INSERT INTO countries (country_name) VALUES ('Philippines');
INSERT INTO countries (country_name) VALUES ('Poland');
INSERT INTO countries (country_name) VALUES ('Portugal');
INSERT INTO countries (country_name) VALUES ('Romania');
INSERT INTO countries (country_name) VALUES ('Russian Federation');
INSERT INTO countries (country_name) VALUES ('Saudi Arabia');
INSERT INTO countries (country_name) VALUES ('Serbia');
INSERT INTO countries (country_name) VALUES ('Singapore');
INSERT INTO countries (country_name) VALUES ('Slovakia');
INSERT INTO countries (country_name) VALUES ('Slovenia');
INSERT INTO countries (country_name) VALUES ('South Africa');
INSERT INTO countries (country_name) VALUES ('South Korea');
INSERT INTO countries (country_name) VALUES ('Spain');
INSERT INTO countries (country_name) VALUES ('Sri Lanka');
INSERT INTO countries (country_name) VALUES ('Sweden');
INSERT INTO countries (country_name) VALUES ('Switzerland');
INSERT INTO countries (country_name) VALUES ('Taiwan');
INSERT INTO countries (country_name) VALUES ('Thailand');
INSERT INTO countries (country_name) VALUES ('Tunisia');
INSERT INTO countries (country_name) VALUES ('Turkey');
INSERT INTO countries (country_name) VALUES ('Ukraine');
INSERT INTO countries (country_name) VALUES ('United Arab Emirates');
INSERT INTO countries (country_name) VALUES ('United Kingdom of Great Britain and Northern Ireland');
INSERT INTO countries (country_name) VALUES ('United States of America');
INSERT INTO countries (country_name) VALUES ('Uruguay');
INSERT INTO countries (country_name) VALUES ('Venezuela');
INSERT INTO countries (country_name) VALUES ('Vietnam');

INSERT INTO professions (prof_name) VALUES ('Data or business analyst');
INSERT INTO professions (prof_name) VALUES ('Data scientist');
INSERT INTO professions (prof_name) VALUES ('Database administrator');
INSERT INTO professions (prof_name) VALUES ('Designer');
INSERT INTO professions (prof_name) VALUES ('DevOps specialist');
INSERT INTO professions (prof_name) VALUES ('Developer, QA or test');
INSERT INTO professions (prof_name) VALUES ('Developer, back-end');
INSERT INTO professions (prof_name) VALUES ('Developer, desktop or enterprise applications');
INSERT INTO professions (prof_name) VALUES ('Developer, embedded applications or devices');
INSERT INTO professions (prof_name) VALUES ('Developer, front-end');
INSERT INTO professions (prof_name) VALUES ('Developer, full-stack');
INSERT INTO professions (prof_name) VALUES ('Developer, game or graphics');
INSERT INTO professions (prof_name) VALUES ('Educator or academic researcher');
INSERT INTO professions (prof_name) VALUES ('Engineer, data');
INSERT INTO professions (prof_name) VALUES ('Engineer, site reliability');
INSERT INTO professions (prof_name) VALUES ('Engineering manager');
INSERT INTO professions (prof_name) VALUES ('Executive');
INSERT INTO professions (prof_name) VALUES ('Machine learning specialist');
INSERT INTO professions (prof_name) VALUES ('Mobile developer - Android');
INSERT INTO professions (prof_name) VALUES ('Mobile developer - Windows Phone');
INSERT INTO professions (prof_name) VALUES ('Mobile developer - iOS');
INSERT INTO professions (prof_name) VALUES ('Product manager');
INSERT INTO professions (prof_name) VALUES ('System administrator');

INSERT INTO languages (language_name) VALUES ('Java');
INSERT INTO languages (language_name) VALUES ('JavaScript');
INSERT INTO languages (language_name) VALUES ('HTML/CSS');
INSERT INTO languages (language_name) VALUES ('PHP');
INSERT INTO languages (language_name) VALUES ('Python');
INSERT INTO languages (language_name) VALUES ('Ruby');
INSERT INTO languages (language_name) VALUES ('SQL');
INSERT INTO languages (language_name) VALUES ('C#');
INSERT INTO languages (language_name) VALUES ('C++');
INSERT INTO languages (language_name) VALUES ('C');
INSERT INTO languages (language_name) VALUES ('Perl');

COPY respondents FROM 'D:\CSV_FILES\respondents.csv' DELIMITER ';' CSV HEADER;

COPY respondent_languages FROM 'D:\CSV_FILES\respondent_languages.csv' DELIMITER ';' CSV HEADER;
