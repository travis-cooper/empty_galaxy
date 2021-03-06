USE empty_galaxy;

CREATE TABLE IF NOT EXISTS user (
userid int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
email varchar(255),
hashedpassword varchar(255),
sessionid varchar(255)
);

CREATE TABLE IF NOT EXISTS game (
gameid int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
player_one int,
player_two int,
player_turn int
);

CREATE TABLE IF NOT EXISTS ship (
shipid int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
userid int NOT NULL,
gameid int,
model varchar(255),
direction int,
position int,
energy int,
armor int,
shield int
);

CREATE TABLE IF NOT EXISTS turret (
turretid int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
shipid int,
model varchar(255),
energy int
);
