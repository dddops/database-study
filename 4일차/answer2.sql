Create table PetOwners(
	ownerID INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	contact VARCHAR(255)
);

CREATE TABLE Pets(
	petID INT PRIMARY KEY AUTO_INCREMENT,
	ownerID INT, 
	FOREIGN KEY (ownerID) REFERENCES PetOwners(ownerID),
	name VARCHAR(100),
	species ENUM('dog', 'cat', 'bear'),
	breed VARCHAR(100)
);

CREATE TABLE Rooms(
	roomID INT PRIMARY KEY AUTO_INCREMENT,
	roomNumber INT,
	roomType ENUM('standard', 'deluxe'),
	pricePerNight INT
);

CREATE TABLE Reservations(
	reservationID INT PRIMARY KEY AUTO_INCREMENT,
	petID INT,
	FOREIGN KEY(petID) REFERENCES Pets(petID),
	roomID INT,
	FOREIGN KEY(roomID) REFERENCES Rooms(roomID),
	startDate DATE,
	endDate DATE
);

CREATE TABLE Services(
	serviceID INT PRIMARY KEY AUTO_INCREMENT,
	reservationID INT,
	FOREIGN KEY(reservationID) REFERENCES Reservations(reservationID),
	serviceName ENUM('목욕', '산책', '식사'),
	servicePrice INT
);