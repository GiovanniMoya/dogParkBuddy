INSERT INTO users (userId, username, email, joined, onlineStatus)
VALUES (DEFAULT, 'Giovanni Moya', 'giovmoya@gmail.com', current_timestamp, TRUE);

INSERT INTO users (userId, username, email, joined, onlineStatus)
VALUES (DEFAULT, 'Andres Moya', 'amoya324@gmail.com', current_timestamp, TRUE);

INSERT INTO friendship (friendshipId, userId, friendUserId, friendshipDate)
VALUES (DEFAULT, 1, 2, current_timestamp);

INSERT INTO dogpark (dogParkId, geoLocation, city, stateLocation, postalCode, addressOfPark)
VALUES (DEFAULT, point(34.429225,-118.523198), 'Santa Clarita', 'CA', '91350', '27150 Bouquet Canyon Rd');

INSERT INTO dogpark (dogParkId, geoLocation, city, stateLocation, postalCode, addressOfPark)
VALUES (DEFAULT, point(34.432974,-118.559132), 'Santa Clarita', 'CA', '91355', '24155 Newhall Ranch Rd');

INSERT INTO favoritedogpark (favoriteDogParkId, userId, dogParkId, favoritedDate)
VALUES (DEFAULT, 1, 1, current_timestamp);

INSERT INTO favoritedogpark (favoriteDogParkId, userId, dogParkId, favoritedDate)
VALUES (DEFAULT, 1, 2, current_timestamp);

INSERT INTO favoritedogpark (favoriteDogParkId, userId, dogParkId, favoritedDate)
VALUES (DEFAULT, 2, 2, current_timestamp);

INSERT INTO chatroom (chatRoomId, dogParkId)
VALUES (DEFAULT, 1);

INSERT INTO chatroom (chatRoomId, dogParkId)
VALUES (DEFAULT, 2);

INSERT INTO chatroommember (id, chatRoomId, userId)
VALUES (DEFAULT, 1, 1);

INSERT INTO chatroommember (id, chatRoomId, userId)
VALUES (DEFAULT, 1, 2);

INSERT INTO chatroommember (id, chatRoomId, userId)
VALUES (DEFAULT, 2, 2);

INSERT INTO chatmessage (messageId, chatRoomId, userId, chatRoomMessage, dateSent, archived)
VALUES (DEFAULT, 1, 1, 'hello world', current_timestamp, FALSE);

INSERT INTO chatmessage (messageId, chatRoomId, userId, chatRoomMessage, dateSent, archived)
VALUES (DEFAULT, 2, 2, 'hello world, my name is andres', current_timestamp, FALSE);

INSERT INTO chatmessage (messageId, chatRoomId, userId, chatRoomMessage, dateSent, archived)
VALUES (DEFAULT, 1, 2, 'hello world andres, my name is giovanni', current_timestamp, FALSE);