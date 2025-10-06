SSIS Conponents
===================

Control Flow
------------
Data Flow Task                    Moves data between sources and destinations while transforming and cleaning
Execute SQL Task                  Executes SQL statements or stored procedures in a relational database e.g. truncate a table before a load
Expression Task                   Builds and evaluates SSIS expressions that set variables at runtime
Script Task                       Performs functions that are not provided by standard integration services tasks

Control Flow Containers
-----------------------
Foreach Loop Container            Repeats tasks in a package. For example load each file in a directory.
Sequence Container                Groups your control flow into more understandable subsystems e.g. scope variables to container level or group tasks to same transaction

Data Flow Transforms
--------------------
Audit                             Includes data about the environment in which the package runs e.g. Package Name
Conditional Split                 Routes data to different outputs depending on the content of the data
Data Conversion                   Converts data from one type to another e.g. string (DT_STR) to unicode string (DT_WSTR)
Derived Column                    Creates new columns by applying expressions to transformation input columns
Lookup                            Join additional columns to the data flow by looking up values in a table
Merge Join                        Combine two sorted data flows into one using the FULL, LEFT or INNER join
Script Component                  Run script code to act as source, destination or transform
Union All                         Combines rows from multiple data flows without sorting

Data Flow Sources
-----------------
Flat File Source                  Read text files. Specify fixed widths for data columns or use delimiters to identify columns and rows
OLEDB Source                      Extracts data from an OLE DB compliant relational database. Extract from table, view or SQL command
XML Source                        Extracts data from an XML file

Data Flow Destinations
----------------------
OLEDB Destination                 Loads data into an OLE DB compliant relational database such as SQL Server

SSIS ToolBox
================

The SSIS ToolBox contains all the components you can use to build your SSIS packages. You can drag and drop components from the toolbox into the Control Flow or Data Flow design surfaces.

You can open the SSIS ToolBox by clicking on the SSIS menu and selecting SSIS ToolBox.

SQL Server Management Studio (SSMS)
====================================
SSIS are now managed through the Data Engine for SQL Server 2022 in object "Integration Services Catalogs"
This is only added when the "Business Intelligence" features are installed on SQL Server.
An SSISDB database must be  created before SSIS packages can be deployed to SQL Server.
