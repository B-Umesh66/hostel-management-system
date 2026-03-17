-- Trigger for student gender vs hostel type
DELIMITER $$

CREATE TRIGGER check_student_gender_hostel
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
    DECLARE hostel_type VARCHAR(10);

    SELECT Type INTO hostel_type
    FROM hostel
    WHERE Hostel_id = NEW.Hostel_id;

    IF NEW.Gender = 'Male' AND hostel_type = 'Girls' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Cannot assign a Male student to a Girls hostel.';

    ELSEIF NEW.Gender = 'Female' AND hostel_type = 'Boys' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Cannot assign a Female student to a Boys hostel.';
    END IF;
END$$

DELIMITER ;

-- Trigger for warden gender vs hostel type
DELIMITER $$

CREATE TRIGGER check_warden_gender_hostel
BEFORE INSERT ON warden
FOR EACH ROW
BEGIN
    DECLARE hostel_type VARCHAR(10);

    SELECT Type INTO hostel_type
    FROM hostel
    WHERE Hostel_id = NEW.Hostel_id;

    IF NEW.Gender = 'Male' AND hostel_type = 'Girls' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Violation: Male Warden cannot be assigned to Girls Hostel.';

    ELSEIF NEW.Gender = 'Female' AND hostel_type = 'Boys' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Violation: Female Warden cannot be assigned to Boys Hostel.';
    END IF;
END$$

DELIMITER ;