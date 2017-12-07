CREATE TABLE Users (INFO VARCHAR(200) NULL, USER_ID INTEGER NOT NULL, USER_NAME VARCHAR(200) NULL, PRIMARY KEY (USER_ID))
;

CREATE TABLE Professors (PROFESSOR_ID INTEGER NOT NULL, PROFESSOR_NAME VARCHAR(200) NULL, PRIMARY KEY (PROFESSOR_ID))
;

CREATE TABLE Subject (SUBJECT_ID INTEGER NOT NULL, SUBJECT_TITLE VARCHAR(200) NULL, USER_ID INTEGER NULL, PRIMARY KEY (SUBJECT_ID))
;

CREATE TABLE Lesson (DATE DATE NULL, LESSON_ID INTEGER NOT NULL, PROFESSOR_ID INTEGER NULL, ROOM VARCHAR(50) NULL, SUBJECT_ID INTEGER NULL, TIME TIME NULL, TYPE INTEGER NULL, PRIMARY KEY (LESSON_ID))
;

ALTER TABLE Subject ADD FOREIGN KEY (USER_ID) REFERENCES Users (USER_ID)
;

ALTER TABLE Lesson ADD FOREIGN KEY (PROFESSOR_ID) REFERENCES Professors (PROFESSOR_ID)
;

ALTER TABLE Lesson ADD FOREIGN KEY (SUBJECT_ID) REFERENCES Subject (SUBJECT_ID)
;

CREATE TABLE AUTO_PK_SUPPORT (TABLE_NAME CHAR(100) NOT NULL, NEXT_ID BIGINT NOT NULL, PRIMARY KEY(TABLE_NAME))
;

DELETE FROM AUTO_PK_SUPPORT WHERE TABLE_NAME IN ('Lesson', 'Professors', 'Subject', 'Users')
;

INSERT INTO AUTO_PK_SUPPORT (TABLE_NAME, NEXT_ID) VALUES ('Lesson', 200)
;

INSERT INTO AUTO_PK_SUPPORT (TABLE_NAME, NEXT_ID) VALUES ('Professors', 200)
;

INSERT INTO AUTO_PK_SUPPORT (TABLE_NAME, NEXT_ID) VALUES ('Subject', 200)
;

INSERT INTO AUTO_PK_SUPPORT (TABLE_NAME, NEXT_ID) VALUES ('Users', 200)
;
