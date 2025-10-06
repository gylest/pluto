CREATE TABLE [SalesTerritory](
	[TerritoryId] int IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	[CountryRegionCode] nvarchar(3) NOT NULL,
	[Group] nvarchar(50) NOT NULL,
	[Version] rowversion NOT NULL,
	[CreatedDate] datetime2(7) CONSTRAINT [DF_SalesTerritory_CreatedDate] DEFAULT (sysdatetime()) NOT NULL,
 CONSTRAINT [PK_SalesTerritory_TerritoryId] PRIMARY KEY CLUSTERED 
(
	[TerritoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
