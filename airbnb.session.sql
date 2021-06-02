
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
    'testemail@email.com',
    'test user bio',
    'CA'
);

-- @BLOCK create rooms table with FOREIGN key ref to users
CREATE TABLE Rooms (
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES Users(id)
);

-- @BLOCK join users and rooms table to associate rooms to users

-- @BLOCK query all rooms owned by users in CA

-- @BLOCK query count of all rooms groups by country ASC and User room count DESC

-- @BLOCK create bookings table that references both users and rooms tables as foreign KEYS

-- @BLOCK query user booking history

-- @BLOCK query room booking HISTORY

-- @BLOCK query active bookings -> bookings where check_in date is past and check_out date is still in future
