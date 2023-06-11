<em> "Individual Statistical Details" folder is: A collection of simpler queries about the data.</em>

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
 
 *We are logged into SSMS already*
 
<ol>
 <li> To your left is the "Object Explorer, this is our nexus.</li>
 <li> Right-click on the "Databases" folder and create a "New Database" name it "SQL Case Study 1" click OK.</li>
 <li> Now right-click your new database > Tasks > Import Flat File </li>
 <li> A pop up window appears click Next. Browse your hard drive for the CSV files folder we made earlier.</li>
 <li> A preview appears, do a quick check all the column names are as intended. Then click Next.</li>
 <li> Here is where you can assign any columns to be Primary keys, which prevents duplicate data, enhances queries and benefits your ability to establish relationships. All that and it serves no purpose for this situation 😆. </li>
 <li> Here is also where you can "Allow nulls" essentially saying get this column in the database at any cost of integrity. A selection we want to use sparingly as good practice. </li>
 </ol>
 
 ## Troubleshooting time:
 <ol>
 <li> Ironically column "start_station_name" <em>may</em> have too many characters for proper processing. If you have that situation. We have two options:</li>
 <ol>
  <li>Edit the CSV files to fit the nvarchar length requirements, which would take ages do to with the size of CSV.</li>
<li> Change "start_station_name" Data Type to nvarchar(100) allowing us 100 characters.</li>
 </ol>
 <li>Column errors for "start_lat" and "end_lat": </li>

  
  
  - Need their Data Type changed from float to decimal(18, 10). 
  * A float in Computer Science is a data type composed of a number that is not an integer, because it includes a fraction represented in decimal format. However it is also subject to something called "Floating impercision" aka after a certain decimal place the computer does its best to relplicate the actual numbers but because a float is stored as 32 bits aka 4 bytes of memory. The data type runs out of memory and becuase of how binary works truncation happens
  I learned all of this in Harvard's CS50 course, here are my notes, the subject of Floating Point Imprecision, Integer Overflow,truncation can all be found at the bottom in week 1's Notes.md 😄
  https://github.com/MjxSjx/CS50x/blob/main/Week%201%20-%20C/Notes.md
I highly recommend the free course to anyone intrigued by Computer Science! 
  
  
 *We managed to load **LARGE** CSV files into SQL without allowing NULLS. Any employer would be proud of our efforts! :muscle:*
  
  
 <li></li>
 <li></li>
 <li></li><li></li>
 <li></li>
</ol>
</details>  


# The SQL Process - Importing the data:



# Fin
Per stakeholder request: 
* We imported the priorly cleaned CSV files **without allowing nulls 💪**
* We Utilized deep SQL queries using keywords: CASE, DISTINCT, JOIN, SUBQUERY, UNION and so on while showing our work 
* We Answered every possible question using data-driven decision-making that are ripe for summary visualizations.

I hope you've found this Excel section guide helpful!

Be sure to check out my Excel and R sections and future case studies!

I am open to criticism. Please contact me via email or LinkedIn for any corrections, improvements, or suggestions.

- [LinkedIn](https://www.linkedin.com/in/matt-johnson0304)
- matt.johnson0304@gmail.com

**Thank you** :bow:
