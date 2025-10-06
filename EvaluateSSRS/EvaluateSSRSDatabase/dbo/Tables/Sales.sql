CREATE TABLE [dbo].[Sales] (
    [SalesId]     INT           IDENTITY (1, 1) NOT NULL,
    [SalesDate]   DATE          NOT NULL,
    [ProductId]   INT           NOT NULL,
	[TerritoryId] INT           NOT NULL,
    [Quantity]    INT           NOT NULL,
    [Version]     ROWVERSION    NOT NULL,
    [CreatedDate] DATETIME2 (7) CONSTRAINT [DF_Sales_CreatedDate] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_Sales_SalesId] PRIMARY KEY CLUSTERED ([SalesId] ASC),
    CONSTRAINT [FK_Sales_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId]),
	CONSTRAINT [FK_Product_SalesTerritory_TerritoryId] FOREIGN KEY ([TerritoryId]) REFERENCES [dbo].[SalesTerritory] ([TerritoryId])
);

