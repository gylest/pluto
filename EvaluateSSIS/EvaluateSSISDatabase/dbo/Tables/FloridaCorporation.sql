CREATE TABLE [dbo].[FloridaCorporation] (
    [CorporateNumber] VARCHAR (12)  NULL,
    [CorporationName] VARCHAR (48)  NULL,
    [FilingStatus]    CHAR (1)      NULL,
    [FilingType]      CHAR (4)      NULL,
    [AddressLine1]    VARCHAR (150) NULL,
    [AddressLine2]    VARCHAR (50)  NULL,
    [City]            VARCHAR (28)  NULL,
    [State]           CHAR (2)      NULL,
    [ZipCode]         VARCHAR (10)  NULL,
    [Country]         VARCHAR (50)  NULL,
    [FilingDate]      VARCHAR (50)  NULL
);

