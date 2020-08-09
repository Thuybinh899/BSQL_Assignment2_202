--Câu 1:
CREATE TABLE Trainee(
    Trainee_Id INT IDENTITY(1,1) PRIMARY KEY,
    Full_Name NVARCHAR(255),
    Birth_Date DATE,
    Gender BIT,
    ET_IQ TINYINT,
    ET_Gmath TINYINT,
    ET_English TINYINT,
    Training_Class INT,
    Evaluation_Notes NVARCHAR(500),
)

INSERT INTO Trainee (Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes)
VALUES ('Nguyen A','01/01/1990','1','10','5','6','10001','Trung Binh'),
('Nguyen B','06/01/1991','0','15','15','16','10002','Kha'),
('Nguyen C','11/04/1990','1','14','15','13','10001','Kha'),
('Nguyen D','01/01/1992','0','12','6','8','10002','Trung Binh'),
('Nguyen D','01/01/1992','0','12','6','8','10002','Trung Binh'),
('Nguyen E','07/11/1991','1','10','10','16','10002','Kha'),
('Nguyen F','09/12/1992','0','18','20','19','10002','Gioi'),
('Nguyen G','08/07/1990','0','15','20','20','10001','Gioi'),
('Nguyen H','07/03/1991','1','2','3','5','10001','Kem'),
('Nguyen I','12/05/1991','1','18','19','19','10002','Gioi'),
('Nguyen K','06/30/1992','0','12','18','16','10002','Kha');
--Câu 2
ALTER TABLE Trainee
ADD Fsoft_Account VARCHAR(255) NOT NULL;
ALTER TABLE Trainee
ADD UNIQUE (Fsoft_Account);
--Câu 3
CREATE VIEW [ET-passed trainees] AS
SELECT ET_IQ, ET_Gmath, ET_English
FROM Trainee
WHERE ET_IQ + ET_Gmath >=20 AND ET_IQ>=8 AND ET_Gmath>=8 AND ET_English>=18
--Câu 4
SELECT * FROM Trainee
WHERE ET_IQ + ET_Gmath >=20 AND ET_IQ>=8 AND ET_Gmath>=8 AND ET_English>=18

SELECT *
FROM Trainee WHERE ET_IQ + ET_Gmath >=20 AND ET_IQ>=8 AND ET_Gmath>=8 AND ET_English>=18
GROUP BY DATEPART(MONTH,Birth_Date);

