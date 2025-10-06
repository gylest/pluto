# EvaluateSSRS

Solution providing a sample SQL Server Reporting Services (SSRS) project and a backing SQL Server database with daily product sales data.

## Projects

- SSRS Reports (folder: `EvaluateSSRS`)
  - Contains report definitions (`.rdl`) that visualize daily sales by product, subcategory, and territory.
  - Reports use shared datasets (expected on the report server) that query the `EvaluateSSRS` SQL database.

- SQL Database (`EvaluateSSRS`)
  - Application database that stores the data surfaced by the reports.
  - Expected daily-grain sales data with the following columns:
    - `SalesDate` (date)
    - `Territory` (string)
    - `Subcategory` (string)
    - `Product` (string)
    - `Quantity` (int)
    - `Sales` (decimal, currency)

## Reports

1) ProductSales.rdl
- Purpose: Shows product-level sales per day, grouped by Sales Date and Subcategory, with totals.
- Layout:
  - Row groups: `SalesDate` → `Subcategory` → details per `Product`
  - Columns: `Product`, `Quantity`, `Sales`
  - Totals: Daily totals per date and a grand total at the end
- Data:
  - Shared dataset: `DataSetProductSalesShared`
  - Fields: `SalesDate`, `Subcategory`, `Product`, `Quantity`, `Sales`
  - Currency is formatted as en-GB (`£`).

2) ProductSalesByTerritory.rdl
- Purpose: Matrix that pivots daily sales by territory across subcategory and product, with totals.
- Layout:
  - Row groups: `Territory` → `SalesDate`
  - Column groups: `Subcategory` → `Product`
  - Values: Sum of `Sales` (currency, en-GB) and sum of `Quantity`
  - Totals: Per territory/date and grand totals
- Data:
  - Shared dataset: `DataSetProductSalesByTerritoryShared`
  - Fields: `SalesDate`, `Territory`, `Subcategory`, `Product`, `Quantity`, `Sales`

## Prerequisites

- SQL Server (instance: `TONY23-PC\DEVSQL`)
- SQL Server Reporting Services 2022
- Reporting Services Configuration Manager

## Setup

1) Install SSRS 2022 (with Developer License) and Configure
- Use Reporting Services Configuration Manager to set up:
- Reporting Services Database: create `ReportServer` on `TONY23-PC\DEVSQL`.
- Web Service URL: `http://TONY23-PC/ReportServer`
- Web Portal URL: `http://TONY23-PC:80/Reports`

2) Deploy the application database
- Deploy/restore the `EvaluateSSRS` database to `TONY23-PC\DEVSQL`.

3) Configure report data access
- Create or update a shared data source on the report server to point to the `EvaluateSSRS` database on `TONY23-PC\DEVSQL`.
- Ensure the shared datasets `DataSetProductSalesShared` and `DataSetProductSalesByTerritoryShared` reference that data source and return the fields listed above.

4) Deploy the SSRS project from Visual Studio
- In the SSRS project __Properties__, set __TargetServerURL__ to `http://TONY23-PC/ReportServer`.
- Right-click the project and choose __Deploy__.

5) Run the reports
- Open the SSRS Web Portal: `http://TONY23-PC:80/Reports`
- Navigate to the deployed folder and open:
  - `ProductSales` for date/subcategory/product detail with daily and grand totals.
  - `ProductSalesByTerritory` for territory/date matrix with subcategory/product columns.

## Notes

- Currency formatting is en-GB (`£`).
- No report parameters are required; reports rely on the shared datasets for data shape and filters.