CREATE TABLE [dbo].[FloridaCorporationError] (
    [CorporateNumber] VARCHAR (50)  NULL,
    [CorporationName] VARCHAR (50)  NULL,
    [CorporateStatus] VARCHAR (50)  NULL,
    [FilingType]      VARCHAR (50)  NULL,
    [AddressLine1]    VARCHAR (150) NULL,
    [AddressLine2]    VARCHAR (150) NULL,
    [City]            VARCHAR (50)  NULL,
    [StateAbbr]       VARCHAR (50)  NULL,
    [ZipCode]         VARCHAR (50)  NULL,
    [Country]         VARCHAR (50)  NULL,
    [FilingDate]      VARCHAR (50)  NULL,
    [TaskName]        NVARCHAR (19) NULL,
    [PackageName]     NVARCHAR (15) NULL
);

