![alt text](https://fablecode.visualstudio.com/_apis/public/build/definitions/085b46b6-fe2a-4297-a999-8099dd5521bb/4/badge?maxAge=0 "Visual studio team services build status") 

# Ygo-database
A schema-only collection of ([Yu-Gi-Oh](http://www.yugioh-card.com/uk/)) definition of objects for SQL Server such as tables, stored procedures, views etc.

## Why?
For continuous deployment of the ygo-database packaged as a DACPAC.

## What is a DACPAC?
A collection of definitions of objects that one could find in a SQL Server database such as tables, stored procedures, views plus some instance level objects such as logins. Official [Microsoft](https://docs.microsoft.com/en-us/sql/relational-databases/data-tier-applications/data-tier-applications) definition:
> A DAC is a self-contained unit of SQL Server database deployment that enables data-tier developers and database administrators to package SQL Server objects into a portable artifact called a DAC package, also known as a DACPAC.

## Prerequisite
Sql Database Project should installed by default. Make sure you have [SSDT(SQL Server Data Tools)](https://www.visualstudio.com/vs/ssdt/) installed before attempting the steps below.

## Installing
```
 $ git clone https://github.com/fablecode/ygo-database.git
```
1. Build the solution
2. Right click the ygo.database.scripts project
3. Click Edit
4. Follow the steps and add a connection string to the target database server
5. Click publish

## Deploy with SqlPackage
SqlPackage.exe is a command line utility that automates the following database development tasks. 
Here's what my command line syntax would be:

```powershell
  SqlPackage /Action:Publish 
   /SourceFile:"ygo.database.scripts.dacpac" 
   /TargetDatabaseName:ygo 
   /TargetServerName:"<YourDatabaseServer>"
```

## Built With
* [Visual Studio 2017](https://www.visualstudio.com/downloads/)
* [SSDT(SQL Server Data Tools)](https://www.visualstudio.com/vs/ssdt/)
* [Visual Studio Team Services](https://www.visualstudio.com/team-services/release-management/) for CI and deployment.

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details.
