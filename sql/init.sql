CREATE TYPE friendshipstatus AS ENUM ('online','offline','private');

CREATE TABLE IF NOT EXISTS users (
	userId SMALLSERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    joined TIMESTAMP NOT NULL,
    onlineStatus BOOLEAN,
	lastDogParkLocation VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS friendship (
	friendshipId SMALLSERIAL PRIMARY KEY,
	userId smallint REFERENCES users(userId) ON DELETE CASCADE,
	friendUserId smallint REFERENCES users(userId) ON DELETE CASCADE,
	onlineStatus friendshipstatus,
	friendshipDate TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS dogpark (
	dogParkId SMALLSERIAL PRIMARY KEY,
	geoLocation point NOT NULL,
	city VARCHAR(255) NOT NULL,
	stateLocation VARCHAR(255) NOT NULL,
	postalCode VARCHAR(5) NOT NULL,
	addressOfPark VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS favoritedogpark (
	favoriteDogParkId SMALLSERIAL PRIMARY KEY,
	userId smallint REFERENCES users(userId) ON DELETE CASCADE,
	dogParkId smallint REFERENCES dogpark(dogParkId) ON DELETE CASCADE,
	favoritedDate TIMESTAMP
);

CREATE TABLE IF NOT EXISTS chatroom (
	chatRoomId SMALLSERIAL PRIMARY KEY,
	dogParkId smallint REFERENCES dogpark(dogParkId) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS chatroommember (
	id SMALLSERIAL PRIMARY KEY,
	chatRoomId smallint REFERENCES chatroom(chatRoomId) ON DELETE CASCADE,
	userId smallint REFERENCES users(userId) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS chatmessage (
	messageId SMALLSERIAL PRIMARY KEY,
	chatRoomId smallint REFERENCES chatroom(chatRoomId) ON DELETE CASCADE,
	userId smallint REFERENCES users(userId) ON DELETE CASCADE,
	chatRoomMessage VARCHAR(280) NOT NULL,
	dateSent TIMESTAMP NOT NULL,
	archived BOOLEAN DEFAULT TRUE
);