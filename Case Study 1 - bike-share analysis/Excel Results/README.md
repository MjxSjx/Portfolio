# The Excel Process: From Dirty To Clean:

*Google Sheets won't open files of these sizes. The instructions for Google Sheets are unfortunately pointless:frowning:.*

* Download the newest annual data here: https://divvy-tripdata.s3.amazonaws.com/index.html.
* Unzip all 12 files and place them in a specially named folder with CSV in the title for clarification.
* Place that folder in a location relevant to the material. The CSV files will be used for SQL and R.
* <strong>AFTER</strong> we clean the data, <strong>THEN</strong> we will copy and convert all the files to XLSX inside a new folder with XLSX in the title. Copying now, like the instructions state, leaves you doing the same work twice:unamused:. CSV files cannot save multiple sheets in one file.

*XLSX files can store more data and have a better compression algorithm, saving you space.*

### *If* the sheets have any missing data, remove the entire row :black_medium_square:
<details>
<summary>Cleaning the data</summary>
  
*This process is per situation, and normally stakeholders are involved with the decision on what to do with empty cells.*

<ol>  
<li> Select all fields (including column names) by clicking and dragging over all columns or by clicking the utmost upper-left from the field section of the sheet. Aka, above row 1 and to the left of column A.</li>
<li> After selecting all fields, press F5 or hold down CTRL+G until a "Go To" window pops up > Select "Special" > Click "Blanks" > Hit OK. This may take minutes to finish running.</li>
  
<li> Once finished, scroll down until you see a highlighted cell or chunk of cells. Right-click when hovered over one and choose "Delete," then choose "Entire row" (you may get a warning; hit OK). This will take minutes, and your sheet may freeze; that's normal.</li>
<li>Sadly, you must do all of these steps twice:weary:.</li>
</ol>
  
<ul>
 <li> Normally you sort and filter each column depending on the data type looking for anomalies or any number of error values</li>
  
  <ul>
   <li> Currency: currency types that are out of range.</li>
   <li> Date: dates that are out of range.</li>
   <li> Number: numbers that are out of range.</li>
   <li> Percentage: percentages that are out of range.</li>
   <li> Text: letters or word lengths that are out of range.</li>
   <li> Time: times that are out of range.</li>
  </ul>
  </ul>
  
*This data is much cleaner than normal situations, but we will see onc instance where it needs to be applied.*
  
</details>  

### Now the data is clean and consistent, it's time to add new columns by using formulas :black_medium_square:
<details>
<summary>Adding ride_length</summary>
  
  *In truth, normally we would also touch base with the stakeholders to ask about removing ride_length duration ranges; lower and higher than certain thresholds are anomalies, offer little insight, and skew most results, outside of rare instances.*
  
 <ol>
 <li> In your spreadsheet create a column called “ride_length.” in Column N row 1.</li> 
 <li> Calculate the length of each ride using the minus operator from columns C (started_at) & D (ended_at) Enter "=D2-C2" in cell N2 </li> 
 <li> Your result will be a Float. Change that into the time format of HH:MM:SS.</li> 
 <li> Select N2 > right click > A window pop up will appear select "Format Cells" (again Excel may freeze)</li> 
 <li> While in the "Number" tab find "Category:" and change it to "Time" > Type: > "37:30:55" > hit OK</li>
 <li> Select N2 > press CTRL+C > use macros to autofill the column (web search) or in N3 hold CTRL+SHIFT+down-arrow key > CTRL+V aka paste, then find the last naturally filled row + 1 select that cell hold CTRL+SHIFT+down-arrow key again and delete the invalid entries (Use PAGE UP & DOWN to move smoothly when close).</li>
   
### Some months will have faulty "ride_length" data. Each month needs to be checked using "Sort".
   
<li> Select <strong>ALL</strong> columns and click on the "Data" tab at the top of the sheet > click Sort > Sort by ride_length > Order Largest to Smallest. 
  Any cells in "ride_length" filled with ##### forever need their whole row deleted (mind your header row).</li>
   
* *Excel is a mess when sorting. It doesn't have the ability to use a primary key to sort all of the fields based on one column. If you forget to sort by <strong>all</strong> columns, your data will be wrong. Also, filtering is limited to 10,000 unique items; with files of this size, filtering for what we need to accomplish is useless. Aka "This is the way".*
   
<li>Now repeat these steps for all 12 sheets</li>
</ol>
</details>  


<details>
<summary>Adding day_of_week</summary>
  
*This one is straight forward :smile:.*
  
 <ol>
 <li>In your spreadsheet create a column called “day_of_week.” in Column O row 1.</li>  
 <li>In O2 enter "=WEEKDAY(C2,1)", 1 = Sunday and 7 = Saturday. Later if you prefer your Excel visuals to have the actual weekday name use "=TEXT(C2, "dddd")"</li>
 <li> Select O2 > press CTRL+C > use macros to autofill the column (web search) or in O3 hold CTRL+SHIFT+down-arrow key > paste, then find the last naturally filled row + 1 select that cell hold CTRL+SHIFT+the down key again and delete the invalid entries (Use PAGE UP & PAGE DOWN to move smoothly when close).</li>
<li>Now repeat these steps for all 12 sheets</li>
</ol>
</details>  

<details>
<summary>Combining all files</summary>
  
*<strong>NOW</strong> we are going to copy and convert all the files to XLSX inside a new folder with XLSX in the title.*

  <ol>
<li>Open the first clean CSV file.</li> 
<li>File > Save As > Browse > Your XLSX folder location > Save as type: Excel Workbook. Do this for all twelve. </li> 
<li>Use Power Query(google search) or simply copy and paste with CTRL+A > CTRL+C > then in original first sheet CTRL+V. Do this for all 12.</li>
</ol>
  
  *Notice all your files sizes are smaller now and you now have a mega file too :clap:.*
</details>  


# The Excel Process: Time to Analyze:
<details>
<summary>Run a few calculations</summary>
  
 *Switch to the XLSX mega file now. Run a few calculations in two files of opposite seaons to get a better sense of the data layout* 
  
<ol>
<li>Calculate the mean of ride_length: in cell Q1 type =AVERAGE(N:N) then format to time just like when we made column N "ride_length"</li>
<li>Calculate the max ride_length: in cell Q4 enter =MAX(N:N) then format to time again.</li>
<li>Calculate the mode for day_of_week: in cell Q8 enter =MODE(O:O)</li> 
</ol>
</details>  

## Pivot tables and Graphs
<details>
<summary>Calculate the average ride_length for members and casual riders</summary>
<ol>
<li>Calculate the average ride_length for members and casual riders: in cell Q11 click "Insert" on the top tab > Click "PivotTable" > select columns M & N > Existing Worksheet then OK. Drag member_casual in the Rows area and ride_length in the Values area > left-click it and choose "Value Field Settings" change Count to Average.</li>
  
  * (blank) auto populates inside your pivot table, this is normal. Remove (blank) by clicking on cell Q11
<li>Now that you have your first pivot table it is time to format the three cells in it just like column N "ride_length".</li>
<li></li>
<li></li>
<li></li>
<li></li>  
</ol>
</details>


# Fin 
Due to the amount of content, the file is too large to post on GitHub; a PNG image has to do.
