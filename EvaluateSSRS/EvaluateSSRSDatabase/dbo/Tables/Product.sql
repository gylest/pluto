CREATE TABLE [dbo].[Product] (
    [ProductId]         INT            IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (100) NOT NULL,
    [ProductNumber]     NVARCHAR (25)  NOT NULL,
    [StandardCost]      MONEY          NOT NULL,
    [ProductCategoryId] INT            NOT NULL,
    [Version]           ROWVERSION     NOT NULL,
    [CreatedDate]       DATETIME2 (7)  CONSTRAINT [DF_Product_CreatedDate] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_Product_ProductId] PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_Product_ProductCategory_ProductCategoryID] FOREIGN KEY ([ProductCategoryId]) REFERENCES [dbo].[ProductCategory] ([ProductCategoryId])
);

