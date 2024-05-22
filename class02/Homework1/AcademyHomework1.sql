USE [SEDCACADEMYDB]

CREATE TABLE [Student](
	[ID][int] NOT NULL,
	[FirstName][nvarchar](50) NOT NULL,
	[LastName][nvarchar](50) NOT NULL,
	[DateOfBirth][date] NOT NULL,
	[EnrolledDate][date] NOT NULL,
	[Gender][char] NOT NULL,
	[NationalIDNumber][int] NOT NULL,
	[StudentCardNumber][UNIQUEIDENTIFIER] DEFAULT NEWID()
)

CREATE TABLE [Teacher](
	[ID][int] NOT NULL,
	[FirstName][nvarchar](50) NOT NULL,
	[LastName][nvarchar](50) NOT NULL,
	[DateOfBirth][date] NOT NULL,
	[AcademicRank][ntext],
	[HireDate][date] NOT NULL
)

CREATE TABLE [Grade](
	[ID][int] NOT NULL,
	[StudentID][int] NOT NULL,
	[CourseID][int] NOT NULL,
	[TeacherID][int] NOT NULL,
	[Grade][decimal](2,0) NOT NULL,
	[Comment][ntext],
	[CreatedDate][datetime] NOT NULL
)

CREATE TABLE [Course](
	[ID][int] NOT NULL,
	[Name][nvarchar](120) NOT NULL,
	[Credit][tinyint] NOT NULL,
	[AcademicYear][tinyint] NOT NULL,
	[Semester][int] CHECK ([Semester] BETWEEN 1 AND 3) NOT NULL
)

CREATE TABLE [AchievmentType](
	[ID][int] NOT NULL,
	[Name][nvarchar](100) NOT NULL,
	[Description][text] NOT NULL,
	[ParticipationRate][decimal](5,2) NOT NULL
)

CREATE TABLE [GradeDetails](
	[ID][int] NOT NULL,
	[GradeID][int] NOT NULL,
	[AchievmentTypeID][int] NOT NULL,
	[AchievmentPoints][int] NOT NULL,
	[AchievmentMaxPoints][int] NOT NULL,
	[AchievmentDate][datetime] NOT NULL
)