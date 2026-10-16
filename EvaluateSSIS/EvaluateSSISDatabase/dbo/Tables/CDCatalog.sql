CREATE TABLE [dbo].[CDCatalog]
(
	[Id]             INT IDENTITY  NOT NULL,
	[Title]          NVARCHAR(100) NOT NULL,
	[Artist]         NVARCHAR(100) NOT NULL,
	[Country]        NVARCHAR(50)  NULL,
	[Company]        NVARCHAR(100) NULL,
	[Price]          DECIMAL(19,4) NOT NULL,
	[RecordModified] DATETIME2(3)  NOT NULL CONSTRAINT [DF_CDCatalog_RecordModified] DEFAULT (GETDATE()),
CONSTRAINT [PK_CDCatalog_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)) ON [PRIMARY];