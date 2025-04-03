create database hospital;
use hospital;
create table Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    DOB DATE NOT NULL,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    ContactNumber VARCHAR(15),
    Address TEXT
);

-- Doctors table
create table Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Specialty VARCHAR(50),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100)
);

-- Appointments table
create table Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime TIME NOT NULL,
    Status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Medical Records table
create table MedicalRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    Diagnosis TEXT,
    TreatmentPlan TEXT,
    RecordDate DATE NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);





insert into Patients (FullName, DOB, Gender, ContactNumber, Address)
values
('Jeyam Ravi', '1990-05-15', 'Male', '9876543210', '14 Main St Chennai'),
('Jothika V', '1985-07-20', 'Female', '8765432109', '6 east St Tambaram'),
('Emily Johnson', '1992-11-10', 'Female', '7654321098', '79 Main road t.Nagar'),
('Michael Peter', '1980-03-22', 'Male', '6543210987', '1 Rajaji St St.Fort'),
('Saradha Davi', '1995-01-30', 'Female', '5432109876', '4 Gokul nagar Velachery'),
('David Miller', '1988-08-25', 'Male', '4321098765', '7 Chinnasamy statium road Triplicane'),
('Lilly Rose', '1975-12-05', 'Female', '3210987654', '23 Woodland road Washermenpet'),
('James Martine', '1993-09-18', 'Male', '2109876543', '45 Kabalieshwarar st Mailapoure'),
('Elizabeth Rani', '1998-06-11', 'Female', '1098765432', '9 west car st saidapetdai'),
('Christoper Lee', '1982-02-14', 'Male', '9988776655', '3 Ushman road tnagar'),
('Sobana thendral', '2000-04-19', 'Female', '8877665544', '6 jayachanderan store road Pallikaranai'),
('Ethan Kevin', '1986-10-03', 'Male', '7766554433', '9 Addampakkam main road Vadapalani');




insert into Doctors (FullName, Specialty, ContactNumber, Email)
values
('Dr. Ramesh Kumar', 'Cardiologist', '9843022167', 'rameshkumar@gmail.com'),
('Dr. AgniEshwaran', 'Dermatologist', '9842075374', 'agni.eshwaran@yahoo.com'),
('Dr. Raj Kumar', 'Pediatrician', '7639308902', 'rajkumar@gmail.com'),
('Dr.Divyhaya', 'Orthopedic Surgeon', '7249987667', 'divhya@yahoo.com'),
('Dr. Gowtham', 'Neurologist', '8764302748', 'gowtham@gmail.com'),
('Dr. Thendralvanan', 'General Practitioner', '6677889900', 'thendral@yahoo.com'),
('Dr. Antony Raja', 'Psychiatrist', '7788990011', 'antony_raja@gmail.com'),
('Dr. Marry Mandalin', 'Oncologist', '8899001122', 'marrymandalin@yahoo.com'),
('Dr.Sangetha', 'Endocrinologist', '9900112233', 'sangetha@yahoo.com'),
('Dr. Kanagaraj ', 'Gynecologist', '9563728496', 'kanagaraj@gmail.com'),
('Dr. Selvakumari ', 'Pulmonologist', '8936527183', 'selvakumar@gmail.com'),
('Dr. Chinnakumarvel ', 'ENT Specialist', '7392862718', 'chinnakumaravel@gmail.com');



insert into Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status)
values
(1, 2, '2025-02-01', '10:00:00', 'Scheduled'),
(2, 1, '2025-02-02', '11:30:00', 'Completed'),
(3, 5, '2025-02-03', '09:15:00', 'Scheduled'),
(4, 3, '2025-02-04', '13:45:00', 'Cancelled'),
(5, 4, '2025-02-05', '08:30:00', 'Scheduled'),
(6, 7, '2025-02-06', '14:00:00', 'Completed'),
(7, 6, '2025-02-07', '15:30:00', 'Completed'),
(8, 9, '2025-02-08', '10:45:00', 'Scheduled'),
(9, 8, '2025-02-09', '12:00:00', 'Scheduled'),
(10, 10, '2025-02-10', '11:15:00', 'Completed'),
(11, 12, '2025-02-11', '16:30:00', 'Scheduled'),
(12, 11, '2025-02-12', '14:45:00', 'Cancelled');




insert into MedicalRecords (PatientID, DoctorID, Diagnosis, TreatmentPlan, RecordDate)
values
(1, 2, 'Eczema', 'Topical cream and antihistamines', '2025-01-15'),
(2, 1, 'Hypertension', 'Lifestyle changes and beta-blockers', '2025-01-20'),
(3, 5, 'Migraine', 'Painkillers and stress management', '2025-01-25'),
(4, 3, 'Asthma', 'Inhaler and avoid allergens', '2025-01-30'),
(5, 4, 'Fractured wrist', 'Surgery and physiotherapy', '2025-02-01'),
(6, 7, 'Depression', 'Cognitive-behavioral therapy and SSRIs', '2025-02-02'),
(7, 6, 'Diabetes', 'Dietary control and insulin', '2025-02-03'),
(8, 9, 'Hypothyroidism', 'Thyroxine supplements', '2025-02-04'),
(9, 8, 'Breast cancer', 'Chemotherapy and radiation', '2025-02-05'),
(10, 10, 'PCOS', 'Lifestyle changes and metformin', '2025-02-06'),
(11, 12, 'Sinusitis', 'Antibiotics and nasal spray', '2025-02-07'),
(12, 11, 'COPD', 'Bronchodilators and oxygen therapy', '2025-02-08');


select * from Patients;
-- Relational Commands
select FullName, ContactNumber from Patients;
select * from Patients where Gender = 'Female';
select * from Doctors order by Specialty; --  Sort doctors by their specialty alphabetically:

select DoctorID, COUNT(AppointmentID) AS AppointmentCount		-- --Count the number of appointments per doctor:
from Appointments
group BY DoctorID;


select 			-- Get appointment details with patient and doctor names:
    a.AppointmentID, 
    p.FullName AS PatientName, 
    d.FullName AS DoctorName, 
    a.AppointmentDate, 
    a.Status
from Appointments a
join Patients p ON a.PatientID = p.PatientID
join Doctors d ON a.DoctorID = d.DoctorID;

create table MedicalRecordLogs (		-- create a trigger to log changes when a new medical record is added.
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    RecordID INT,
    LogTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


DELIMITER //

create TRIGGER AfterInsertMedicalRecord
after insert ON MedicalRecords
for each row
BEGIN
    insert into MedicalRecordLogs (RecordID) values (NEW.RecordID);
END; //


DELIMITER ;
-- Test the trigger
insert into MedicalRecords (PatientID, DoctorID, Diagnosis, TreatmentPlan, RecordDate)
values (1, 2, 'Allergy', 'Antihistamines', '2025-02-01');

select * from MedicalRecordLogs;

-- LIKE Operator
select * from Patients where FullName LIKE 'J%';
select * from Doctors where Specialty LIKE '%ologist%';

update Appointments
set Status = 'Completed'
where AppointmentID = 1;

alter table Patients
add Email VARCHAR(100);


alter table Doctors
MODIFY ContactNumber VARCHAR(20);


alter table Patients
DROP COLUMN Email;


DELETE from MedicalRecords where RecordID = 5;

-- Constraints
alter table Doctors
add CONSTRAINT UC_Email UNIQUE (Email);

alter table Appointments
add CONSTRAINT FK_PatientID
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID);


-- Subqurries
-- Fetch the name of the patient with the most appointments:
select FullName 
from Patients
where PatientID = (
    select PatientID 
    from Appointments
    group BY PatientID
    order by COUNT(AppointmentID) DESC
    LIMIT 1
);

-- Fetch doctors who treated patients diagnosed with "Diabetes":

select DISTINCT d.FullName
from Doctors d
where DoctorID IN (
    select DoctorID 
    from MedicalRecords 
    where Diagnosis = 'Diabetes'
);


-- Drop Command
DROP table MedicalRecordLogs;
DROP view CompletedAppointments;

-- update the treatment plan for a specific patient:

update MedicalRecords
set TreatmentPlan = 'Dietary control and regular exercise'
where RecordID = 7;


-- Fetch all upcoming appointments:

select * from Appointments
where AppointmentDate > CURRENT_DATE();


select COUNT(*) AS FemalePatients     --   Fetch the number of female patients
from Patients
where Gender = 'Female';


update Doctors			-- add a new specialty to a doctor:
set Specialty = CONCAT(Specialty, ', Nutritionist')
where DoctorID = 6;


-- Fetching a list of all appointments with patient and doctor details.

select 
    a.AppointmentID,
    p.FullName AS PatientName,
    d.FullName AS DoctorName,
    a.AppointmentDate,
    a.AppointmentTime,
    a.Status
from Appointments a
join Patients p ON a.PatientID = p.PatientID
join Doctors d ON a.DoctorID = d.DoctorID;


-- Use view
-- create a view to simplify fetching completed appointments with patient and doctor details

create view CompletedAppointments AS
select 
    a.AppointmentID,
    p.FullName AS PatientName,
    d.FullName AS DoctorName,
    a.AppointmentDate,
    a.AppointmentTime
from Appointments a
join Patients p ON a.PatientID = p.PatientID
join Doctors d ON a.DoctorID = d.DoctorID
where a.Status = 'Completed';

select * from CompletedAppointments;

-- Sub Qurrey
--  Fetch patients who have more than 3 appointments.
select FullName 
from Patients 
where PatientID IN (
    select PatientID 
    from Appointments 
    group BY PatientID 
    having COUNT(AppointmentID) > 3
);

--  create a Stored Procedure
--  A stored procedure to count appointments for a specific doctor.
DELIMITER //

create PROCEDURE GetAppointmentCountForDoctor(IN docID INT, OUT appointmentCount INT)
BEGIN
    select COUNT(*) 
    into appointmentCount
    from Appointments
    where DoctorID = docID;
END //

DELIMITER ;

CALL GetAppointmentCountForDoctor(1, @count);
select @count AS AppointmentCount;







