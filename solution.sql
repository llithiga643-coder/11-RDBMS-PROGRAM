CREATE TABLE Enrollment(
    StudentID INT,
    CourseID INT,
    PRIMARY KEY(StudentID, CourseID),
    FOREIGN KEY(StudentID)
    REFERENCES Student(StudentID),
    FOREIGN KEY(CourseID)
    REFERENCES Course(CourseID)
);

INSERT INTO Enrollment VALUES
(1,201),
(2,202),
(3,201);

CREATE VIEW StudentDetails AS
SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentName,
    c.CourseName,
    f.FacultyName
FROM Student s
JOIN Department d
    ON s.DepartmentID = d.DepartmentID
JOIN Enrollment e
    ON s.StudentID = e.StudentID
JOIN Course c
    ON e.CourseID = c.CourseID
JOIN Faculty f
    ON c.FacultyID = f.FacultyID;

SELECT * FROM StudentDetails;
