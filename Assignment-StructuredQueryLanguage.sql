CREATE TABLE Members 
    (id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT);


CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);



-- Task 1 DATA Insertion

INSERT INTO Members (id, name, age)
VALUES
	(1, 'John Doe', 30),
    (2, 'Jane Smith', 25),
    (3, 'Emily Johnson', 35),
    (4, 'Michael Brown', 40);
    
SELECT * FROM Members;
    
    
    
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) 
VALUES
	(1, 1, '2024-08-01', '08:00 AM', 'Yoga'),
	(2, 2, '2024-08-01', '09:00 AM', 'Cardio'),
	(3, 3, '2024-08-01', '10:00 AM', 'Strength Training'),
	(4, 1, '2024-08-02', '08:00 AM', 'Pilates'),
	(5, 4, '2024-08-02', '09:00 AM', 'Swimming');
    

SELECT * FROM WorkoutSessions;





-- Task 2
-- I did not use the name Jane Doe in my Memebers table so I Updated the workout session
-- for john doe instead i hope that doesn't make a difference.

UPDATE WorkoutSessions 
SET session_time = '06:00 PM'
WHERE member_id = 1 AND session_date = '2024-08-01';


SELECT * FROM WorkoutSessions;



-- Task 3
-- Also did not have a member named jane smith coincidently so i used john smith for this solution 
-- i hope this works okay.

DELETE FROM WorkoutSessions
WHERE member_id = 2;

DELETE FROM Members
WHERE id = 2;


SELECT * FROM Members;


SELECT * FROM WorkoutSessions;





    
    
    