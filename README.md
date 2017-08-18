# ygo-database
A schema-only collection of Ygo ([Yu-Gi-Oh](http://www.yugioh-card.com/uk/)) definition of objects for SQL Server such as tables, stored procedures, views etc.

# Why?
For continuous deployment of the ygo-database packaged as a DACPAC.

# What is a DACPAC?
A collection of definitions of objects that one could find in a SQL Server database such as tables, stored procedures, views plus some instance level objects such as logins. Official [Microsoft](https://docs.microsoft.com/en-us/sql/relational-databases/data-tier-applications/data-tier-applications) definition:
> A DAC is a self-contained unit of SQL Server database deployment that enables data-tier developers and database administrators to package SQL Server objects into a portable artifact called a DAC package, also known as a DACPAC.

# Prerequisite
Sql Database Project should installed by default. Make sure you have [SSDT(SQL Server Data Tools)](https://www.visualstudio.com/vs/ssdt/) installed before attempting the steps below

# Quick deploy
1. Build the solution
2. Right click the ygo.database.scripts project
3. Click Edit
4. Follow the steps and add a connection string to the target database server
5. Click publish

# Deploy with SqlPackage
SqlPackage.exe is a command line utility that automates the following database development tasks. 
Here's what my command line syntax would be:

```powershell
  SqlPackage /Action:Publish 
   /SourceFile:"ygo.database.scripts.dacpac" 
   /TargetDatabaseName:ygo-database 
   /TargetServerName:"<YourDatabaseServer>"
```

# MIT License

Copyright (c) 2017 Dennis Poulton

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
