# EvaluateSSIS

This solution contains two related projects:
- `EvaluateSSIS` (SSIS project with multiple demo packages)
- `EvaluateSSISDatabase` (SQL Database project with supporting schema, e.g., error logging)

The packages demonstrate XML/JSON ingestion, joins, lookups, auditing, error logging, and transactions in SSIS.

## Projects

### 1) EvaluateSSIS (SSIS)
SSIS packages and what they do:

- `ImportXML.dtsx`
  - Iterates XML files matching `CD*.xml` from the project folder.
  - Uses `XML Source` with `cd_catalog.xsd` to read CD data and loads into `[dbo].[CDCatalog]`.
  - Tracks processed file names in a `User::FileList` variable and increments a `User::FileCount`.
  - Connection: `TONY23-PC\DEVSQL.EvaluateSSIS` (OLE DB to `EvaluateSSIS` DB).

- `ImportJson.dtsx`
  - Reads `Customers.json` via a `Script Component` (DataContractJsonSerializer).
  - Adds a derived `FullName` and converts `Account` to `AccountUC`.
  - Loads to `[dbo].[Customer_Result]`.
  - Connections: File CM for `Customers.json` and OLE DB `TONY23-PC\DEVSQL.EvaluateSSIS`.

- `InnerJoin_OuterJoin_Setup.dtsx`
  - Creates tables if missing:
    - `[dbo].[Customer]`
    - `[dbo].[Customer_Result]`

- `InnerJoin.dtsx`
  - Truncates `[dbo].[Customer]` and `[dbo].[Customer_Result]`.
  - Loads `[dbo].[Customer]` from `Customers.csv` (flat file) with simple conversions.
  - Two sources read:
    - Customers 1–10 (full rowset)
    - Customers 2,4,6,8 (keys only)
  - `Merge Join` (INNER) on `CustomerId` and loads result to `[dbo].[Customer_Result]`.

- `OuterJoin.dtsx`
  - Truncates `[dbo].[Customer]` and `[dbo].[Customer_Result]`.
  - Loads `[dbo].[Customer]` from `Customers.csv` (flat file) with simple conversions.
  - Two sources read:
    - Customers 1–10 (full rowset)
    - Customers 2,4,6,8 (keys only)
  - `Merge Join` (LEFT OUTER) on `CustomerId` and loads result to `[dbo].[Customer_Result]`.

- `LookUp.dtsx`
  - End-to-end demo with data quality and lookup:
    - Truncates `dbo.ZipCode`, `dbo.FloridaCorporation`, `dbo.FloridaCorporationError`.
    - Loads `dbo.ZipCode` from `ZipCodeExtract.csv`.
    - Loads Florida corporate data from `Corporations_Florida_1.dat`.
    - `Derived Column` trims ZipCode to 5 chars.
    - `Conditional Split` routes records missing State or City.
    - `Lookup` (partial cache) enriches by ZipCode from `dbo.ZipCode`, copying City/State when matched.
    - `Audit` adds package/task context used for error logging rows.
    - Good and matched rows unioned and inserted into `[dbo].[FloridaCorporation]`.
    - No-match (bad) rows logged into `[dbo].[FloridaCorporationError]` with audit columns.
  - Connections: Flat files and OLE DB `TONY23-PC\DEVSQL.EvaluateSSIS`.

- `Transactions.dtsx`
  - Demonstrates SSIS transactions and error handling:
    - `Truncate Table` -> Sequence container (`TransactionOption=Required`).
    - Inside sequence:
      - Data flow loads `[stg].[Customer]` from `[Sales].[Customer]` (OLE DB source), converts `AccountNumber` to `AccountNumberUC`, and inserts into `[stg].[Customer]`.
      - Next task intentionally executes invalid SQL to force an error, causing transaction rollback.
    - Logging:
      - SSIS logging configured to Windows Event Log.
      - `OnError` event handler logs to `[dbo].[PackageError]` via parameterized `Execute SQL Task`, storing PackageId, machine name, package/task, error code/description, and date.

- `ReadMe.txt`
  - Supplemental notes (kept for reference).

Notes:
- The OLE DB connection managers reference instances like `TONY23-PC\DEVSQL`. Adjust to your environment or map via project parameters/configuration.

### 2) EvaluateSSISDatabase (SQL Database)
Schema scripts supporting the SSIS demos. Example:

- `dbo.PackageError.sql`
  - Table to capture SSIS errors logged from `Transactions.dtsx` OnError handler:
    ```
    CREATE TABLE [dbo].[PackageError](
      [Id] INT IDENTITY NOT NULL PRIMARY KEY,
      [PackageId] NVARCHAR(100) NOT NULL,
      [Machine_Name] NVARCHAR(200),
      [Package_Name] NVARCHAR(200),
      [Task_Name] NVARCHAR(200),
      [Error_Code] INT,
      [Error_Description] NVARCHAR(MAX),
      [CreateDate] DATETIME
    );
    ```

Ensure this database project is deployed before running the SSIS packages that depend on it.

## Prerequisites

- Software
  - Visual Studio 2022 with SQL Server Data Tools (SSDT) and the SSIS extension.
  - SQL Server (2017 or later recommended) with Database Engine and SSIS runtime.
  - SQL Server Integration Services (SSIS) project support.
  - SQL Server Management Studio (SSMS) for database management.

- Database
  - A database named `EvaluateSSIS` (or update connection managers to your target DB).
  - Deploy the `EvaluateSSISDatabase` project (at least `dbo.PackageError` for `Transactions.dtsx`).
  - For `Transactions.dtsx`, ensure schema/objects exist:
    - `[stg].[Customer]` table.
    - Source table `[Sales].[Customer]` (used by OLE DB Source), or adjust the source query/table to an available one.

- Files
  - Place the following files in the paths referenced by the packages or re-point the connection managers:
    - `EvaluateSSIS\Customers.csv`
    - `EvaluateSSIS\Customers.json`
    - `EvaluateSSIS\cd_catalog.xsd` and matching XMLs `CD*.xml`
    - `EvaluateSSIS\Corporations_Florida_1.dat`
    - `EvaluateSSIS\ZipCodeExtract.csv`

- Connectivity
  - Update OLE DB connection managers (`TONY23-PC\DEVSQL`) to point at your SQL instance and DB.
  - Ensure proper permissions to create/alter tables (for setup packages) and insert/truncate as used by the demos.

- Distributed Transactions (MSDTC)
  - Some scenarios (e.g., `Transactions.dtsx` using `TransactionOption=Required`) may require MSDTC when a distributed transaction is enlisted.
  - Verify MSDTC is running and configured on the machine(s) involved:
    - Start service: Open Services, start “Distributed Transaction Coordinator”.
    - Component Services -> Computers -> My Computer -> Distributed Transaction Coordinator -> Local DTC -> Properties:
      - Security tab: enable “Network DTC Access”, “Allow Inbound/Outbound”, “No Authentication Required” (or as per your security policy).
    - Open necessary firewall ports for MSDTC (default TCP 135 and dynamic RPC range) if DTC spans machines.
  - If using only a single SQL connection without promoting to a distributed transaction, MSDTC may not be required; however, enabling it avoids promotion issues when multiple resource managers are involved.

## Running the demos

Recommended sequence:
1) Deploy `EvaluateSSISDatabase` (ensures `dbo.PackageError`, and any other needed objects).
2) In `EvaluateSSIS`, open and update connection managers to your SQL Server.
3) Run setup: `InnerJoin_OuterJoin_Setup.dtsx`.
4) Run `OuterJoin.dtsx` or `InnerJoin.dtsx`.
5) Run `LookUp.dtsx` (truncates/loads ZipCode then corporate data).
6) Run `ImportXML.dtsx` and `ImportJson.dtsx` as needed.
7) Run `Transactions.dtsx` to see transaction rollback and error logging to `dbo.PackageError`.

## Troubleshooting

- If a flat file or schema path is invalid, edit the corresponding Connection Manager to your local path.
- If you get transaction or enlistment errors, verify MSDTC settings and that the SSIS runtime account has permissions.
- If tables are missing, run `InnerJoin_OuterJoin_Setup.dtsx` or create tables as per the package mappings.