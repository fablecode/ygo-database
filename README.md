# ygo-database
A schema-only collection of Ygo ([Yu-Gi-Oh](http://www.yugioh-card.com/uk/)) definition of objects for SQL Server such as tables, stored procedures, views etc.

# Why?
For continuous deployment of the ygo-database to an environment, packaged as a DACPAC.

# What is a DACPAC?
A collection of definitions of objects that one could find in a SQL Server database such as tables, stored procedures, views plus some instance level objects such as logins. Official [Microsoft](https://docs.microsoft.com/en-us/sql/relational-databases/data-tier-applications/data-tier-applications) definition:
> A DAC is a self-contained unit of SQL Server database deployment that enables data-tier developers and database administrators to package SQL Server objects into a portable artifact called a DAC package, also known as a DACPAC.
