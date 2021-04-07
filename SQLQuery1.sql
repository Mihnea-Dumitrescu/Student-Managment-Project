create table Coursetable
(
	Cid int not null primary key identity(1,1),
	Cname nvarchar(150),
	Duration nvarchar(150),
	Cfees int
);

create table tutor
(
	Tid int not null primary key identity (1,1),
	Tname nvarchar(150),
	Temail nvarchar(150),
	Tphone int,
	Tcourse nvarchar(150),
	Tqualification nvarchar(150),
	Joindate date
);

create table student
(
	Stid int not null primary key identity(1,1),
	Stfname nvarchar(150),
	Stlname nvarchar(150),
	StFatherName nvarchar(150),
	StFatherPhone int,
	StEmail nvarchar(150),
	Stphone int,
	Coursejoin nvarchar(150),
	Coursefees int,
	Firstinstallment int,
	FeesDue int,
	Joindate date
)