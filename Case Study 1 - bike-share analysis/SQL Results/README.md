# SQL - Installation:
*These instructions are for Windows OS only*

<details>
<summary> Installing the program </summary>
<ol>
<li> Download and install SSMS 19.1 it will be your SQL program: https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16#download-ssms </li>
<li> You still need a server. Download and install the "Express" server for SQL: https://www.microsoft.com/en-us/sql-server/sql-server-downloads </li>
<li> Launch SQL Server Management Studio 19 </li>
<li> Make sure: </li>
<ul>
<li>Server type: Database Engine</li>
<li>Server name: should be set to your PC name \SQLEXPRESS; i.e. MattPC\SQLEXPRESS</li>
<li>Authentication: Windows Authentication</li>

 * To fix the common server error. Go to "Options" > "Connection Properties" check the "Trust server certificate" box then click "Connect" at the bottom.
</ul>
</ol>
 
  *Now you're up and running great job!*
  
</details>  

<details>
<summary> Database time </summary>
<ol>
 <li> To your left is the "Object Explorer, this is our nexus.</li>
 <li> Left-click on the "Databases" folder and create a "New Database" name it "SQL Case Study 1" click OK.</li>
 <li> Now left-click your new database > Tasks > Import Flat File </li>
 <li> A pop up window appears click Next. Browse your hard drive for the CSV files folder we made earlier.</li>
 <li> A preview appears, do a quick check all the column names are as intended. Then click Next.</li>
 <li> Here is where you can assign any columns to be Primary keys, which prevents duplicate data, enhances queries and benefits your ability to establish relationships. All that and it serves no purpose for this situation 😆. </li>
 <li> Here is also where you can "Allow nulls" essentially saying get this column in the database at any cost of integrity. A selection we want to use sparingly as good practice. </li>
 <li> ironically column start_station_name *MAY* have too many characters for proper processing. If you have that situation. We have two options:</li>
 <ol>
  <li>Edit the CSV files to fit the nvarchar length requirements, which would take ages do to with the size of CSV</li>
<li> We have to change "start_station_name" Data Type to nvarchar(100) allowing us 100 characters.</li>
 </ol>

 <li></li>
 <li></li>
 <li></li>
 <li></li>
 <li></li><li></li>
 <li></li>
</ol>
</details>  

























# The SQL Process - Importing the data:


# Fin
Per stakeholder request, we utilized SQL while showing our work, answering every possible question using data-driven decision-making.
* Individual Statistical Details folder: A collection of simpler queries about the data.
