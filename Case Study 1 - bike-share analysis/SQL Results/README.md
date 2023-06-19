<em> "Individual Statistical Details" folder: A collection of simpler queries about the data.</em> 

# SQL - Installation and Importing:              
*These instructions are for Windows OS only*

<details>
<summary> Installing the program </summary>
<ol>
<li> Download and install SSMS 19.1; it will be your SQL program: https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16#download-ssms </li>
<li> You still need a server. Download and install the "Express" server for SQL: https://www.microsoft.com/en-us/sql-server/sql-server-downloads </li>
<li> Launch SQL Server Management Studio 19 </li>
<li> Make sure: </li> 
<ul>
<li>Server type: Database Engine</li>
<li>Server name: should be set to your PC name \SQLEXPRESS; i.e., MattPC\SQLEXPRESS</li>
<li>Authentication: Windows Authentication</li>

 * To fix the common server error go to "Options" > "Connection Properties," check the "Trust server certificate" box, and then click "Connect" at the bottom.
</ul>
</ol>
 
  *Now you're up and running, great job!*
  
</details>  

<details>
<summary> Database time </summary> 
 
 *We are logged into SSMS already*
 
<ol>
 <li> To your left is the "Object Explorer; this is our nexus.</li>
 <li> Right-click on the "Databases" folder and create a "New Database." Name it "SQL Case Study 1." Click OK.</li>
 <li> Now right-click your new database > Tasks > Import Flat File </li>
 <li> A pop up window appears; click Next. Browse your hard drive for the CSV files folder we made earlier.</li>
 <li> A preview appears; do a quick check that all the column names are as intended. Then click Next.</li>
 <li> Here is where you can assign any columns to be primary keys, which prevents duplicate data, enhances queries, and benefits your ability to establish relationships. All that, and it serves no purpose for this situation 🤣. </li>
 <li> Here is also where you can "Allow nulls" essentially saying get this column in the database at any cost of integrity. <em>A selection we want to use sparingly as good practice </em>. </li>
 <li>SQL automatically generates its best guess as to what the data type is for each column and is likely going to interpret "ride_length" as multiple different data types because some sheets have longer than 24-hour durations, which complicates things (<em>and is also why normally we'd ask to remove them in a real data analysis stakeholder situation</em>). Our job is to make sure the data type is consistent throughout all 12 files. These are the three you may see and why SQL chose them:
 <ul>
    <li><strong>datetime:</strong> This will auto-populate by SQL when data exceeds 25-39 hours. A fair alternative to the "time" data type with moderately small SQL syntax alterations.</li>
  <li><strong>nvarchar(50):</strong> This will auto-populate when durations are over 40 hours. The syntax needed to coerce this data type  <em>is</em> workable but verbose, if you like a challenge "this is the way". </li>
  <li><strong>time:</strong> This will auto-populate by SQL when the data <strong>does not</strong> exceed 25 hours and what I <strong>suggest</strong> you change all 12 to 👍. This also means altering your Excel sheets again using "Sort" to remove entries above 25 hours if you did not do so in the Excel guide already.</li>
  
  ### ⬆️ Make sure you follow step 8; we need consistency ⬆️
  
</ul>
</li>
<li> Our new tables are stored inside the "Tables" folder, which is inside our "SQL Case Study 1" database. </li>
 </ol>
 
 ## Troubleshooting time:
 <ol>
 <li> Ironically, columns "start_station_name" and "end_station_name <em>may</em> have too many characters for proper processing. If you have that situation. We have two options:</li>
 <ol>
  <li>Edit the CSV files to fit the nvarchar length requirements, which would take ages due to the size of the CSVs.</li>
<li> Change their data types to nvarchar(100), allowing up to 100 characters, or nvarchar(MAX), allowing for what is basically infinite.</li>
 </ol>
 <li>Column errors for "start_lat" and "end_lat", "start_lng" and "end_lng": They need their data type changed from float to decimal(18, 10). 
 
  <details>
<summary>Explanation</summary>
  
<em> A float in Computer Science is a data type composed of a number that is not an integer because it includes a fraction represented in decimal format. However, it is also subject to something called "Floating impercision" which leads to "Integer Overflow". Aka after a certain decimal place, the computer does its best to replicate the actual numbers, but because a float is stored as 32 bits, aka 4 bytes of memory, 
 The data type runs out of memory, and because of how binary works, truncation happens, aka you need NULL in your column without a data type swap.
 
I learned all of this and much more in Harvard's CS50 course. My notes on the subjects of: 
 <ul>
  <li>Floating Point Imprecision</li>
 <li>Integer Overflow</li> 
  <li>Truncation</li> 
  </ul>
 
 can be found at the <strong>bottom</strong> of week 1's Notes.md file 😄
 
I highly recommend the free course to anyone intrigued by Computer Science! </em>
   
* [My Notes](https://github.com/MjxSjx/CS50x/blob/main/Week%201%20-%20C/Notes.md) 📓
   
* [The course](https://cs50.harvard.edu/x/2023/) 🏫
   
  </details>
  
<li> <strong>Reminder:</strong> You may get a "ride_length" error claiming endless ####### are stored instead of valid data. Here is the excel walkthrough on how to fix it. 
 
* [Adding ride_length](https://github.com/MjxSjx/Portfolio/tree/main/Case%20Study%201%20-%20bike-share%20analysis/Excel%20Results)

    
 <li>Now time to load all the other sheets</li> 
</ol>
 
<em> We managed to load LARGE CSV files into SQL without allowing NULLs. Any employer would be proud of our efforts! 💪 </em>
</details>  


# The SQL Process - Query Time:

* Once all 12 CSV files are loaded into your database, refresh your "Object Explorer" by pressing F5 or clicking the reset button in the tab at the top.
* Now it's time to queue. Press CTRL+N or click "New Query" just below the "Tools" tab at the top of the application. 
* One important note: Since we're dealing with .CSV files that start with a number, we need to always use [] square brackets around our file names, i.e., [202205-divvy-tripdata].
* Skim around above for SQL syntax that is applicable to the case study.
* Honestly, I thought of everything I could and, of course, answered stakeholder queries. I gathered over 25 inquiries and deleted a few silly ones.
* I thought of making a walkthrough for SQL syntax, but I'm not sure what that would look like. An explanation of what every keyword does? <em> that seems like a waste of everyones time. just go here [w3schools](https://www.w3schools.com/sql/). </em>
* The sytnax along with the results are all listed in every .sql file. Take a look and try them out, or make your own!


# Fin
Per stakeholder request: 
* We imported the previously cleaned CSV files **without allowing NULLs** by changing data types in SQL 💪.
* We utilized deep SQL queries using CASE, CREATE, DISTINCT, JOIN, SUBQUERY, UNION, and so on while showing our work.
* We answered every possible question using data-driven decision-making and created files that are ripe for exporting to be used in summary visualizations.

I hope you've found this SQL section guide helpful!

Be sure to check out my Excel and R sections and future case studies!

I am open to criticism. Please contact me via email or LinkedIn for any corrections, improvements, or suggestions.

- [LinkedIn](https://www.linkedin.com/in/matt-johnson0304)
- matt.johnson0304@gmail.com

**Thank you** :bow:
