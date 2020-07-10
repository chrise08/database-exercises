USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'UNKNOWN',
    name VARCHAR(100) NOT NULL ,
    release_date INT UNSIGNED NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id),
    -- work with someone on this
    UNIQUE KEY (artist, name)
);