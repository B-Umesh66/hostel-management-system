-- Admin Table
CREATE TABLE `admin` (
  `Admin_name` varchar(20) DEFAULT NULL,
  `Admin_id` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Admin_id`)
);

-- Hostel FIRST (parent table)
CREATE TABLE `hostel` (
  `Hostel_id` varchar(10) NOT NULL,
  `Hostel_name` varchar(45) DEFAULT NULL,
  `Total_capacity` int DEFAULT NULL,
  `Avail_capacity` int DEFAULT NULL,
  `Type` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Hostel_id`)
);

-- Student (depends on hostel)
CREATE TABLE `student` (
  `Student_id` varchar(20) NOT NULL,
  `Student_name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Ph_no` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Addrs` varchar(45) DEFAULT NULL,
  `Branch` varchar(10) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `Hostel_id` varchar(10) DEFAULT NULL,
  `Room_no` int DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Student_id`),
  KEY `Hostel_student_id_idx` (`Hostel_id`),
  CONSTRAINT `student_hostel` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`)
);

-- Rooms (depends on hostel)
CREATE TABLE `rooms` (
  `Hostel_id` varchar(10) DEFAULT NULL,
  `Room_no` int NOT NULL,
  `total_capacity` int DEFAULT NULL,
  `avail_capacity` int DEFAULT NULL,
  PRIMARY KEY (`Room_no`),
  KEY `rooms_hostel_idx` (`Hostel_id`),
  CONSTRAINT `rooms_hostel_fk` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`)
);

-- Change Room (depends on hostel)
CREATE TABLE `change_room` (
  `Change_id` int NOT NULL,
  `Student_id` varchar(20) DEFAULT NULL,
  `hostel_id` varchar(10) DEFAULT NULL,
  `current_room` int DEFAULT NULL,
  `new_room` int DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  PRIMARY KEY (`Change_id`),
  KEY `change_room_hostel_idx` (`hostel_id`),
  CONSTRAINT `change_room_hostel_fk` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`Hostel_id`)
);

-- Outpass (depends on hostel + student)
CREATE TABLE `outpass` (
  `Outpass_id` int NOT NULL,
  `Student_id` varchar(20) DEFAULT NULL,
  `Hostel_id` varchar(10) DEFAULT NULL,
  `room_no` int DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Outpass_id`),
  KEY `Student_id_idx` (`Student_id`),
  KEY `Hostel_id_idx` (`Hostel_id`),
  CONSTRAINT `outpass_hostel_fk` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`),
  CONSTRAINT `outpass_student_fk` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`)
);

-- Warden (depends on hostel)
CREATE TABLE `warden` (
  `Warden_id` varchar(10) NOT NULL,
  `Warden_name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Ph_no` varchar(10) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Addrs` varchar(60) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Hostel_id` varchar(10) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Warden_id`),
  KEY `warden_hostel_idx` (`Hostel_id`),
  CONSTRAINT `warden_hostel_fk` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`)
);