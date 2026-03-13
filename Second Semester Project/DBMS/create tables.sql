USE Donation_Management_System;

-- CREATE TABLE [User] (
--     UserID INT PRIMARY KEY IDENTITY(1,1),
--     Email VARCHAR(100) NOT NULL,
--     Password VARCHAR(100) NOT NULL,
--     Role VARCHAR(50) NOT NULL,

--     --CHECK Constraint
--     CONSTRAINT chk_UserEmail CHECK (Email LIKE '%@%')
 --CONSTRAINT chk_rol CHECK(Role IN ('Donor', 'Recipient', 'Admin'))
-- );

--CREATE TABLE Donor (
--    DonorID INT PRIMARY KEY IDENTITY(1,1),
--    Name VARCHAR(100) NOT NULL,
--    Password VARCHAR(100) NOT NULL,
--    DateOfBirth DATE NOT NULL,
--    PhoneNumber VARCHAR(15) NOT NULL,
--    CNIC VARCHAR(15) NOT NULL UNIQUE,
--    Email VARCHAR(100) NOT NULL UNIQUE,
--    Nationality VARCHAR(50) NOT NULL DEFAULT 'Pakistani',

--    -- CHECK Constraints:
--    CONSTRAINT chk_Donor_Age CHECK (DATEDIFF(YEAR, DateOfBirth, GETDATE()) >= 18),
--    CONSTRAINT chk_Donor_EmailFormat CHECK (Email LIKE '%@%'),
--    CONSTRAINT chk_Donor_Phone CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
--    CONSTRAINT chk_Donor_CNICFormat CHECK (CNIC LIKE '[0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[0-9]'),
--    CONSTRAINT chk_Donor_Nationality CHECK (Nationality = 'Pakistani')
--);


--CREATE TABLE Recipient (
--    RecipientID INT PRIMARY KEY IDENTITY(1,1),
--    Name VARCHAR(100) NOT NULL,
--    Password VARCHAR(100) NOT NULL,
--    DateOfBirth DATE NOT NULL,
--    PhoneNumber VARCHAR(15) NOT NULL,
--    CNIC VARCHAR(15) NOT NULL UNIQUE,
--    Email VARCHAR(100) NOT NULL UNIQUE,
--    Nationality VARCHAR(50) NOT NULL DEFAULT 'Pakistani',

--    -- CHECK Constraints:
--    CONSTRAINT chk_Recip_Age CHECK (DATEDIFF(YEAR, DateOfBirth, GETDATE()) >= 18),
--    CONSTRAINT chk_Recip_EmailFormat CHECK (Email LIKE '%@%'),
--    CONSTRAINT chk_Recip_Phone CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
--    CONSTRAINT chk_Recip_CNICFormat CHECK (CNIC LIKE '[0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[0-9]'),
--    CONSTRAINT chk_Recip_Nationality CHECK (Nationality = 'Pakistani')
--);
--alter table Recipient
--drop Constraint chk_Recip_Age;

--CREATE TABLE Admin (
--    AdminID INT PRIMARY KEY IDENTITY(1,1),
--    Name VARCHAR(100) NOT NULL,
--    Email VARCHAR(100) NOT NULL UNIQUE,
--    Password VARCHAR(100) NOT NULL,
--    DateOfBirth DATE NOT NULL,
--    Gender VARCHAR(10) NOT NULL,
--    PhoneNumber VARCHAR(15) NOT NULL,
--    CNIC VARCHAR(15) NOT NULL UNIQUE,
--    Address VARCHAR(200) NOT NULL,
--    Photo NVARCHAR(300) NOT NULL,

--    -- CHECK Constraints:
--    CONSTRAINT chk_Admin_Age CHECK (DATEDIFF(YEAR, DateOfBirth, GETDATE()) >= 25),
--    CONSTRAINT chk_Admin_EmailFormat CHECK (Email LIKE '%@%'),
--    CONSTRAINT chk_Admin_Phone CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
--    CONSTRAINT chk_Admin_CNICFormat CHECK (CNIC LIKE '[0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[0-9]'),
--    CONSTRAINT chk_Admin_Gender CHECK (Gender IN ('Male', 'Female'))
--);


 --CREATE TABLE Donation (
 --    DonationID INT PRIMARY KEY IDENTITY(1,1),
 --    DonorID INT NOT NULL,
 --    Type VARCHAR(20) NOT NULL,
 --    DonationDate DATE NOT NULL DEFAULT GETDATE(),

 --    --Foreign Key Constraint
 --    CONSTRAINT fk_Donor FOREIGN KEY (DonorID) REFERENCES Donor(DonorID),

 --    --Type Constraint: Only 'Blood', 'Organ', or 'Money' allowed
 --    CONSTRAINT chk_DonationType CHECK (Type IN ('Blood', 'Organ', 'Money'))
 --);

 --CREATE TABLE OrganDonation (
 --    OrganDonationID INT PRIMARY KEY IDENTITY(1,1),
 --    DonationID INT NOT NULL,
 --    FirstName VARCHAR(50) NOT NULL,
 --    LastName VARCHAR(50) NOT NULL,
 --    DateOfBirth DATE NOT NULL,
 --    BloodType VARCHAR(5) NOT NULL,
	-- OrganType VARCHAR (20) NOT NULL CHECK (OrganType IN ('Kidney', 'Liver', 'Bone Marrow', 'Lungs')),
 --    Email VARCHAR(100) NOT NULL,
 --    Occupation VARCHAR(100),
 --    Address VARCHAR(200),
 --    PhoneNumber VARCHAR(15),
 --    DonationDate DATE NOT NULL DEFAULT GETDATE(),


 --    Email must contain '@'
 --    CONSTRAINT chk_OrgEmail CHECK (Email LIKE '%@%'),

 --    DonorID must exist in Donation table where Type = 'Organ'
 --    CONSTRAINT fk_OrganDonor FOREIGN KEY (DonationID) REFERENCES Donation(DonationID)
 --);

 --CREATE TABLE BloodDonation (
 --    BloodDonationID INT PRIMARY KEY IDENTITY(1,1),
 --    DonationID INT NOT NULL,
 --    FirstName VARCHAR(50) NOT NULL,
 --    LastName VARCHAR(50) NOT NULL,
 --    DateOfBirth DATE NOT NULL,
 --    BloodType VARCHAR(5) NOT NULL,
 --    Email VARCHAR(100) NOT NULL,
 --    Occupation VARCHAR(100),
 --    Address VARCHAR(200),
 --    PhoneNumber VARCHAR(15),
 --    DonationDate DATE NOT NULL DEFAULT GETDATE(),
 --    Email must contain '@'
 --    CONSTRAINT chk_bloodEmail CHECK (Email LIKE '%@%'),
 --    DonorID must exist in Donation table where Type = 'Organ'
 --    CONSTRAINT fk_BloodDonor FOREIGN KEY (DonationID) REFERENCES Donation(DonationID),
	--CONSTRAINT chk_BloodDonor_Phone CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	--CONSTRAINT chk_bloodType CHECK (BloodType IN ('A+','A-','B+','B-','AB+','AB-','O+','O-'))
 --);

 --CREATE TABLE MoneyDonation (
 --    MoneyDonationID INT PRIMARY KEY IDENTITY(1,1),
 --    DonationID INT NOT NULL,
 --    FirstName VARCHAR(50) NOT NULL,
 --    LastName VARCHAR(50) NOT NULL,
 --    Email VARCHAR(100) NOT NULL,
 --    Occupation VARCHAR(100),
 --    Address VARCHAR(200),
 --    PhoneNumber VARCHAR(15),
 --    Amount DECIMAL(10, 2) NOT NULL,
 --    DonationDate DATE NOT NULL DEFAULT GETDATE(),

 --    --Constraints
 --    CONSTRAINT chk_Email_Money CHECK (Email LIKE '%@%'),
 --    CONSTRAINT chk_Amount CHECK (Amount > 0),
	-- CONSTRAINT chk_MoneyDonor_Phone CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
 --    --Foreign Key to Donor table
 --    CONSTRAINT fk_Donor_Money FOREIGN KEY (DonationID) REFERENCES Donation(DonationID)
 --);

 CREATE TABLE Request (
     RequestID INT PRIMARY KEY IDENTITY(1,1),
     RecipientID INT NOT NULL,
     RequestType VARCHAR(20) NOT NULL,
     RequestDate DATE NOT NULL DEFAULT GETDATE(),

     --Type allowed: Blood, Organ, Money
     CONSTRAINT chk_RequestType CHECK (RequestType IN ('Blood', 'Organ', 'Money')),

     --Foreign key to Recipient
     CONSTRAINT fk_Request_Recipient FOREIGN KEY (RecipientID) REFERENCES Recipient(RecipientID)
 );


 --CREATE TABLE BloodRequest (
 --    BloodRequestID INT PRIMARY KEY IDENTITY(1,1),
 --    RequestID INT NOT NULL,
 --    FirstName VARCHAR(50) NOT NULL,
 --    LastName VARCHAR(50) NOT NULL,
 --    DateOfBirth DATE NOT NULL,
 --    BloodType VARCHAR(5) NOT NULL,
 --    Email VARCHAR(100) NOT NULL,
 --    Occupation VARCHAR(100),
 --    Address VARCHAR(200),
 --    PhoneNumber VARCHAR(15),
 --    RequestDate DATE NOT NULL DEFAULT GETDATE(),

 --    --Email must contain '@'
 --    CONSTRAINT chk_BloodEmail_req CHECK (Email LIKE '%@%'),
	-- CONSTRAINT chk_BloodReq_Phone CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	-- CONSTRAINT chk_bloodReqType CHECK (BloodType IN ('A+','A-','B+','B-','AB+','AB-','O+','O-')),
 --    --DonorID must exist in Donation table where Type = 'Organ'
 --    CONSTRAINT fk_BloodReq FOREIGN KEY (RequestID) REFERENCES Request(RequestID)
 --);

 --CREATE TABLE OrganRequest (
 --    OrganRequestID INT PRIMARY KEY IDENTITY(1,1),
 --    RequestID INT NOT NULL,
 --    FirstName VARCHAR(50) NOT NULL,
 --    LastName VARCHAR(50) NOT NULL,
 --    DateOfBirth DATE NOT NULL,
 --    BloodType VARCHAR(5) NOT NULL,
	-- OrganType VARCHAR (20) NOT NULL CHECK (OrganType IN ('Kidney', 'Liver', 'Bone Marrow', 'Lungs')),
 --    Email VARCHAR(100) NOT NULL,
 --    Occupation VARCHAR(100),
 --    Address VARCHAR(200),
 --    PhoneNumber VARCHAR(15),
 --    RequestDate DATE NOT NULL DEFAULT GETDATE(),

 --    --Email must contain '@'
 --    CONSTRAINT chk_OrgEmail_req CHECK (Email LIKE '%@%'),
	-- CONSTRAINT chk_OrganReq_Phone CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	-- CONSTRAINT chk_OrganReqType CHECK (BloodType IN ('A+','A-','B+','B-','AB+','AB-','O+','O-')),
 --    --DonorID must exist in Donation table where Type = 'Organ'
 --    CONSTRAINT fk_OrgReq FOREIGN KEY (RequestID) REFERENCES Request(RequestID)
 );

 --CREATE TABLE MoneyRequest (
 --    MoneyRequestID INT PRIMARY KEY IDENTITY(1,1),
 --    RequestID INT NOT NULL,                         
 --    FirstName VARCHAR(50) NOT NULL,
 --    LastName VARCHAR(50) NOT NULL,
 --    PhoneNumber VARCHAR(15) NOT NULL,
 --    Email VARCHAR(100) NOT NULL,
 --    Address VARCHAR(200),
 --    Occupation VARCHAR(100),
 --    AmountRequested DECIMAL(10, 2) NOT NULL,
 --    AccountNumber VARCHAR(50) NOT NULL,
 --    RequestDate DATE NOT NULL DEFAULT GETDATE(),

 --    CONSTRAINT chk_Email_Format CHECK (Email LIKE '%@%'),
 --    CONSTRAINT chk_Amount_Positive CHECK (AmountRequested > 0),
	-- CONSTRAINT chk_MoneyReq_Phone CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	--	CONSTRAINT chk_AccNo CHECK (LEN(AccountNumber) BETWEEN 8 AND 20),
 --    CONSTRAINT fk_Recipient_MoneyRequest FOREIGN KEY (RequestID) REFERENCES Request(RequestID)
 --);



--Drop table Donor;
--Drop table Admin;
--Drop table Recipient;
--Drop table Donation;
--Drop table Request;
--Drop table BloodDonation;
--Drop table BloodRequest;
--Drop table OrganDonation;
--Drop table OrganRequest;
--Drop table MoneyDonation;
--Drop table MoneyRequest;



