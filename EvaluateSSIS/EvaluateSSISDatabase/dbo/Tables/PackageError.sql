CREATE TABLE [dbo].[PackageError]
(
    [Id]                INT IDENTITY  NOT NULL,
    [PackageId]         NVARCHAR(100) NOT NULL,
    [Machine_Name]      NVARCHAR(200),
    [Package_Name]      NVARCHAR(200),
    [Task_Name]         NVARCHAR(200),
    [Error_Code]        INT,
    [Error_Description] NVARCHAR(MAX),
    [CreateDate]        DATETIME,
CONSTRAINT [PK_PackageError_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)) ON [PRIMARY];
