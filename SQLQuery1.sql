CREATE TABLE [dbo].[Administrates](
    [AdminID] [varchar](50) NOT NULL,
    [TeacherID] [varchar](50) NOT NULL,
    [StudentID] [varchar](50) NOT NULL,
    [CourseID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Administrates] PRIMARY KEY CLUSTERED 
(
    [AdminID] ASC,
    [TeacherID] ASC,
    [StudentID] ASC,
    [CourseID] ASC
)
)

CREATE TABLE [dbo].[Assignments](
    [AssignmentID] [varchar](50) NOT NULL,
    [AssignmentName] [varchar](50) NOT NULL,
    [AssignmentGrade] [int] NOT NULL,
    [AssignmentStart] [date] NOT NULL,
    [AssignmentEnd] [date] NOT NULL,
    [TeacherID] [int] NOT NULL,
    [StudentID] [int] NOT NULL,
    [CourseID] [int] NOT NULL,
 CONSTRAINT [PK_Assignments] PRIMARY KEY CLUSTERED 
(
    [AssignmentID] ASC
)
)

CREATE TABLE [dbo].[Administrator](
    [AdminID] [varchar](50) NOT NULL,
    [AdminUsernameID] [varchar](50) NOT NULL,
    [AdminName] [varchar](50) NOT NULL,
    [AdminSurname] [varchar](50) NOT NULL,
    [AdminBirth] [date] NOT NULL,
    [AdminEmail] [varchar](50) NOT NULL,
    [AdminPhone] [varchar](50) NOT NULL,
    [AdminUsername] [varchar](50) NOT NULL,
    [AdminPassword] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
    [AdminID] ASC,
    [AdminUsernameID] ASC
)
)

CREATE TABLE [dbo].[Assignments](
    [AssignmentID] [varchar](50) NOT NULL,
    [AssignmentName] [varchar](50) NOT NULL,
    [AssignmentGrade] [int] NOT NULL,
    [AssignmentStart] [date] NOT NULL,
    [AssignmentEnd] [date] NOT NULL,
    [TeacherID] [int] NOT NULL,
    [StudentID] [int] NOT NULL,
    [CourseID] [int] NOT NULL,
 CONSTRAINT [PK_Assignments] PRIMARY KEY CLUSTERED 
(
    [AssignmentID] ASC
)
)


CREATE TABLE [dbo].[Course/Project](
    [CourseID] [varchar](50) NOT NULL,
    [CourseName] [varchar](50) NOT NULL,
    [CourseYear] [int] NOT NULL,
    [CourseLength] [int] NOT NULL,
    [CourseCredits] [int] NOT NULL,
 CONSTRAINT [PKCoursetaC1FFD86180B35769] PRIMARY KEY CLUSTERED 
(
    [CourseID] ASC
)
)

CREATE TABLE [dbo].[Student](
    [StudentID] [varchar](50) NOT NULL,
    [StudentUsernameID] [varchar](50) NOT NULL,
    [StudentName] [varchar](50) NOT NULL,
    [StudentSurname] [varchar](50) NOT NULL,
    [StudentEmail] [varchar](50) NOT NULL,
    [StudentPhone] [varchar](50) NOT NULL,
    [StudentBirth] [date] NOT NULL,
    [StudentYear] [int] NOT NULL,
    [StudentUsername] [varchar](50) NOT NULL,
    [StudentPassword] [varchar](50) NOT NULL,
 CONSTRAINT [PKstudentC33FEBEA7817AC7E] PRIMARY KEY CLUSTERED 
(
    [StudentID] ASC,
    [StudentUsernameID] ASC
)
)

CREATE TABLE [dbo].[Studies](
    [StudentID] [varchar](50) NOT NULL,
    [CourseID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Studies] PRIMARY KEY CLUSTERED 
(
    [StudentID] ASC,
    [CourseID] ASC
)
)

CREATE TABLE [dbo].[Teacher](
    [TeacherID] [varchar](50) NOT NULL,
    [TeacherUsernameID] [varchar](50) NOT NULL,
    [TeacherName] [varchar](50) NOT NULL,
    [TeacherSurname] [varchar](50) NOT NULL,
    [TeacherDepartment] [varchar](50) NOT NULL,
    [TeacherEmail] [varchar](150) NOT NULL,
    [TeacherPhone] [varchar](50) NOT NULL,
    [TeacherBirth] [date] NOT NULL,
    [TeacherUsername] [varchar](50) NOT NULL,
    [TeacherPassword] [varchar](50) NOT NULL,
 CONSTRAINT [PKtutorC451DB3189CE2D79] PRIMARY KEY CLUSTERED 
(
    [TeacherID] ASC,
    [TeacherUsernameID] ASC
)
)

CREATE TABLE [dbo].[Teaches](
    [TeacherID] [varchar](50) NOT NULL,
    [CourseID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teaches] PRIMARY KEY CLUSTERED 
(
    [TeacherID] ASC,
    [CourseID] ASC
)
)