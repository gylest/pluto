CREATE TABLE [dbo].[ProductCategory] (
    [ProductCategoryId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (100) NOT NULL,
    [Version]           ROWVERSION     NOT NULL,
    [CreatedDate]       DATETIME2 (7)  CONSTRAINT [DF_ProductCategory_CreatedDate] DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [PK_ProductCategory_ProductCategoryId] PRIMARY KEY CLUSTERED ([ProductCategoryId] ASC)
);

