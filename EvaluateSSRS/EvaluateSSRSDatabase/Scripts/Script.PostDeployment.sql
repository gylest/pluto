/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [CreatedDate]) VALUES (1, N'Accessories', CAST(N'2019-10-02T11:00:24.5645809' AS DateTime2))
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [CreatedDate]) VALUES (2, N'Camcorders', CAST(N'2019-10-02T11:00:24.5645809' AS DateTime2))
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [CreatedDate]) VALUES (3, N'Digital', CAST(N'2019-10-02T11:00:24.5645809' AS DateTime2))
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [CreatedDate]) VALUES (4, N'Digital SLR', CAST(N'2019-10-02T11:00:24.5645809' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF

SET IDENTITY_INSERT [dbo].[SalesTerritory] ON 
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (1, N'Northeast', N'US', N'North America', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (2, N'Northwest', N'US', N'North America', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (3, N'Central', N'US', N'North America', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (4, N'Southwest', N'US', N'North America', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (5, N'Southeast', N'US', N'North America', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (6, N'Canada', N'CA', N'North America', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (7, N'France', N'FR', N'Europe', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (8, N'Germany', N'DE', N'Europe', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (9, N'United Kingdom', N'GB', N'Europe', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
INSERT [dbo].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [CreatedDate]) VALUES (10, N'Australia', N'AU', N'Pacific', CAST(N'2019-10-03T12:16:31.0194210' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SalesTerritory] OFF

SET IDENTITY_INSERT [dbo].[Product] ON 
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (1, N'Carrying Case', N'ACC-101-02', 145.9500, 1, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (2, N'Tripod', N'ACC-102-01', 75.0000, 1, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (3, N'Lens Adapter', N'ACC-103-05', 67.5000, 1, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (4, N'Mini Battery Charger', N'ACC-107-06', 24.0000, 1, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (5, N'Telephoto Conversion Lens', N'ACC-104-13', 76.6700, 1, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (6, N'USB Cable', N'ACC-109-06', 30.0000, 1, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (7, N'Budget Movie-Maker', N'ACC-111-21', 422.0000, 1, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (8, N'Business Videographer', N'CAM-103-01', 800.0000, 2, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (9, N'Social Videographer', N'CAM-190-22', 50.0000, 2, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (10, N'Advanced Digital', N'DIG-204-11', 185.5000, 3, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (11, N'Compact Digital', N'DIG-204-11', 129.0000, 3, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (12, N'Consumer Digital', N'DIG-206-31', 150.0000, 3, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (13, N'Slim Digital', N'DIG-209-45', 189.9500, 3, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (14, N'SLR Camera 35mm', N'DIGSLR-345-77', 545.0000, 4, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [ProductNumber], [StandardCost], [ProductCategoryId], [CreatedDate]) VALUES (15, N'SLR Camera', N'DIGSLR-712-61', 302.0000, 4, CAST(N'2019-10-02T11:02:52.727' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF

SET IDENTITY_INSERT [dbo].[Sales] ON 
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (1, CAST(N'2009-01-05' AS Date), 1, 1, 68, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (2, CAST(N'2009-01-06' AS Date), 2, 2, 18, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (3, CAST(N'2009-01-11' AS Date), 3, 1, 17, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (4, CAST(N'2009-01-05' AS Date), 4, 3, 44, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (5, CAST(N'2009-01-06' AS Date), 5, 1, 18, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (6, CAST(N'2009-01-06' AS Date), 6, 4, 26, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (7, CAST(N'2009-01-08' AS Date), 7, 1, 9, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (8, CAST(N'2009-01-09' AS Date), 8, 2, 13, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (9, CAST(N'2009-01-10' AS Date), 9, 1, 60, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (10, CAST(N'2009-01-11' AS Date), 10, 2, 39, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (11, CAST(N'2009-01-07' AS Date), 11, 3, 84, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (12, CAST(N'2009-01-08' AS Date), 12, 3, 17, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (13, CAST(N'2009-01-05' AS Date), 13, 3, 44, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (14, CAST(N'2009-01-09' AS Date), 14, 1, 34, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (15, CAST(N'2009-01-07' AS Date), 15, 3, 88, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (16, CAST(N'2009-01-11' AS Date), 8, 1, 30, CAST(N'2019-10-02T11:12:06.6861851' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (17, CAST(N'2015-01-05' AS Date), 1, 3, 68, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (18, CAST(N'2015-01-05' AS Date), 1, 1, 55, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (19, CAST(N'2015-01-05' AS Date), 1, 4, 37, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (20, CAST(N'2015-01-05' AS Date), 2, 3, 18, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (21, CAST(N'2015-01-05' AS Date), 2, 1, 24, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (22, CAST(N'2015-01-05' AS Date), 2, 4, 15, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (23, CAST(N'2015-01-05' AS Date), 3, 3, 17, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (24, CAST(N'2015-01-05' AS Date), 3, 1, 11, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (25, CAST(N'2015-01-05' AS Date), 3, 4, 21, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (26, CAST(N'2015-01-05' AS Date), 11, 3, 79, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (27, CAST(N'2015-01-05' AS Date), 11, 1, 68, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (28, CAST(N'2015-01-05' AS Date), 11, 4, 82, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (29, CAST(N'2015-01-05' AS Date), 13, 3, 38, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (30, CAST(N'2015-01-05' AS Date), 13, 1, 44, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (31, CAST(N'2015-01-05' AS Date), 13, 4, 49, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (32, CAST(N'2015-01-06' AS Date), 1, 3, 54, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (33, CAST(N'2015-01-06' AS Date), 1, 1, 48, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (34, CAST(N'2015-01-06' AS Date), 1, 4, 41, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (35, CAST(N'2015-01-06' AS Date), 2, 3, 16, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (36, CAST(N'2015-01-06' AS Date), 2, 1, 27, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (37, CAST(N'2015-01-06' AS Date), 2, 4, 19, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (38, CAST(N'2015-01-06' AS Date), 3, 3, 13, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (39, CAST(N'2015-01-06' AS Date), 3, 1, 9, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (40, CAST(N'2015-01-06' AS Date), 3, 4, 18, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (41, CAST(N'2015-01-06' AS Date), 11, 3, 30, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (42, CAST(N'2015-01-06' AS Date), 11, 1, 45, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (43, CAST(N'2015-01-06' AS Date), 11, 4, 67, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (44, CAST(N'2015-01-06' AS Date), 13, 3, 52, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (45, CAST(N'2015-01-06' AS Date), 13, 1, 66, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
INSERT [dbo].[Sales] ([SalesId], [SalesDate], [ProductId], [TerritoryId], [Quantity], [CreatedDate]) VALUES (46, CAST(N'2015-01-06' AS Date), 13, 4, 35, CAST(N'2019-10-03T13:01:11.1825987' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Sales] OFF
