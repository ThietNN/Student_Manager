use Student_Manager;
create table class(
                      ClassID int not null auto_increment primary key,
                      ClassName varchar(60) not null,
                      StartDate datetime not null,
                      status bit
);
create table student(
                        studentID int not null auto_increment primary key,
                        StudentName varchar(30) not null,
                        Address varchar(50),
                        Phone varchar (20),
                        Status bit,
                        ClassID int not null,
                        foreign key (ClassID) references Class(ClassID)
);
create table subject(
                        SubjectID int not null auto_increment primary key,
                        SubjectName varchar (30) not null,
                        credit tinyint not null default 1 check(credit >= 1),
                        status bit default 1
);
CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubjectID),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentID)
);
