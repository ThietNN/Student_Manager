use Student_Manager;
SELECT * FROM Student;
SELECT * FROM Student WHERE Status = true;
SELECT * FROM Subject WHERE Credit < 10;
SELECT S.StudentId, S.StudentName, C.ClassName From Student S join Class C on S.ClassId = C.ClassId;
SELECT S.StudentId, S.StudentName, C.ClassName FROM Student S join Class C on S.ClassId = C.ClassId WHERE C.CLASSNAME = 'A1';
SELECT S.StudentId, S.StudentName, Sub.SubjectName, M.Mark FROM Student S join Mark M on S.studentID = M.StudentId join subject sub on M.SubId = Sub.SubjectId;
SELECT S.StudentId, S.StudentName, Sub.SubjectName, M.Mark FROM Student S join Mark M on S.studentID = M.StudentId join subject sub on M.SubId = Sub.SubjectId WHERE Sub.SubjectName = 'CF';
