--ift287_33bd

CREATE TABLE User (
    ID INT PRIMARY KEY NOT NULL,
    USERNAME       TEXT,
    PASSWORD       TEXT,
    DISPLAYNAME    TEXT
);

CREATE TABLE Group (
    ID INT PRIMARY KEY NOT NULL,
    NAME           TEXT,
    INVITE_TOKEN   TEXT,
    OWNER          INT
);

CREATE TABLE Lift (
    ID INT PRIMARY KEY NOT NULL,
    NAME           TEXT
);

CREATE TABLE UserLift (
    ID SERIAL PRIMARY KEY NOT NULL,
    USERID         INT REFERENCES User,
    LIFTID         INT REFERENCES Lift,
    LIFTDATE       TIMESTAMP,
    LIFTAMOUNT     NUMBER(10, 2)
);

CREATE TABLE UserGroup (
    USERID         INT REFERENCES User,
    GROUPID        INT REFERENCES Group
);
