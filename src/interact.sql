use Student_Manager;
SELECT * FROM Student;
SELECT * FROM Student WHERE Status = true;
SELECT * FROM Subject WHERE Credit < 10;
SELECT S.StudentId, S.StudentName, C.ClassName From Student S join Class C on S.ClassId = C.ClassId;
SELECT S.StudentId, S.StudentName, C.ClassName FROM Student S join Class C on S.ClassId = C.ClassId WHERE C.CLASSNAME = 'A1';
SELECT S.StudentId, S.StudentName, Sub.SubjectName, M.Mark FROM Student S join Mark M on S.studentID = M.StudentId join subject sub on M.SubId = Sub.SubjectId;
SELECT S.StudentId, S.StudentName, Sub.SubjectName, M.Mark FROM Student S join Mark M on S.studentID = M.StudentId join subject sub on M.SubId = Sub.SubjectId WHERE Sub.SubjectName = 'CF';

SELECT * FROM student WHERE StudentName like 'H%';
SELECT * FROM class WHERE month(StartDate) = 12;
SELECT * FROM subject WHERE credit between 3 and 5;

UPDATE student
SET ClassID = 2
WHERE StudentName = 'Hung';
SELECT S.StudentName, Sub.SubjectName, M.Mark FROM STUDENT S JOIN Mark M ON S.studentID = M.StudentId join Subject SUB ON M.SubId = Sub.SubjectID group by Mark desc, StudentName asc;

SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;

SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);

SELECT * , MAX(credit)
FROM subject;

SELECT S.*, MAX(m.mark)
FROM subject S JOIN mark m on S.SubjectID = m.SubId;

SELECT S.*, avg(m.mark) AS 'AVERAGE'
FROM student s JOIN mark m on s.studentID = m.StudentId
GROUP BY m.StudentId;