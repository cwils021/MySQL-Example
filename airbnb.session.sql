
-- @BLOCK create user table
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(2)
) ;

-- @BLOCK insert data into user table
INSERT INTO Users (email, bio, country)
VALUES (
    'testemail3@email.com',
    'test user bio3',
    'UK'
);

-- @BLOCK create rooms table with FOREIGN key ref to users
CREATE TABLE Rooms (
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES Users(id)
);
-- @BLOCK insert data into room table
INSERT INTO Rooms (street, owner_id)
VALUES (
    '1 not real Cir',
    '3'
);

-- @BLOCK join users and rooms table to associate rooms to users
SELECT Users.country, Users.email, Rooms.owner_id, Rooms.id AS room_id, Rooms.street
FROM Users
LEFT JOIN Rooms on Users.id = Rooms.owner_id
ORDER BY Users.country;

-- @BLOCK query all rooms owned by users in CA
SELECT Rooms.id AS room_id, Users.*
FROM Users
LEFT JOIN Rooms ON Users.id = Rooms.owner_id
WHERE Users.country = 'CA';

-- @BLOCK query count of all rooms groups by country ASC and User room count DESC
SELECT Users.country, Users.id AS user_id, COUNT(*) AS room_count
FROM Users
LEFT JOIN Rooms ON Users.id = Rooms.owner_id
GROUP BY Users.country, Users.id
ORDER BY COUNT(*) DESC;
-- @BLOCK create bookings table that references both users and rooms tables as foreign KEYS
CREATE TABLE Bookings (
    id INT AUTO_INCREMENT,
    room_id INT NOT NULL,
    user INT NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (room_id) REFERENCES Rooms(id),
    FOREIGN KEY (user) REFERENCES Users(id)
);


-- @BLOCK query user booking history

-- @BLOCK query room booking HISTORY

-- @BLOCK query active bookings -> bookings where check_in date is past and check_out date is still in future
