# The Excel Process: From Dirty To Clean:

* Download the newest annual data here: https://divvy-tripdata.s3.amazonaws.com/index.html.
* Unzip all 12 files and place them in a specially named folder for usability and transferability.
* Place that folder in a location relevant to the material.
* There is no reason to convert the files to XLSX, ignore the dulplication and format alteration steps in the PDF.


### *If* the sheets have any missing data, remove the entire row.
<details>
<summary>Cleaning the data</summary>
  
*This process is per situation, and normally stakeholders are involved with the decision on what to do with empty cells.*

<ol>  
<li> Select all fields (including column names) by clicking and dragging over all columns or by clicking the utmost upper-left from the field section of the sheet. Aka, above row 1 and to the left of column A.</li>
<li> After selecting all fields, hold down CTRL+G until a "Go To" window pops up > Select "Special" > Click "Blanks" > Hit OK. This may take literal minutes to finish running.</li>
  
<li> Once finished, scroll down until you see a highlighted cell or chunk of cells. Right-click when hovered over one and choose "Delete," then choose "Entire row" (you may get a warning; hit OK). This will take minutes, and your sheet may freeze; that's normal.</li>
<li>Sadly, you must do all of these steps twice:weary:.</li>
</ol>
</details>  

### Now the data is clean and consistent, it's time to add new columns by using formulas
<details>
<summary>Adding ride_length</summary>
 <ol>
 <li> In your spreadsheet create a column called “ride_length.” in Column N row 1.</li> 
 <li> Calculate the length of each ride using the minus operator from columns C (started_at) & D (ended_at) Enter "=D2-C2" in cell N2 </li> 
 <li> Your result will be a Float. Change that into the time format of HH:MM:SS.</li> 
 <li> Select N2 > right click > A window pop up will appear select "Format Cells" (again Excel may freeze)</li> 
 <li> While in the "Number" tab find "Category:" and change it to "Time" > Type: > "37:30:55" > hit OK</li>
 <li> Select N2 > press CTRL+C > use macros to autofill the column (web search) or in N3 hold CTRL+SHIFT+down-arrow key > paste, then find the last naturally filled row + 1 select that cell hold CTRL+SHIFT+the down key again and delete the invalid entries (Use PAGE UP & PAGE DOWN to move smoothly when close).</li>
<li>Unfortunately, some months at random will have faulty "ride_length" data. You need to check each month using "Sort". Select column N and click on the "Data" tab at the top of the sheet > click Sort > Expand the selection > Sort by ride_length > Order Largest to smallest. Any cells filled with ################################## forever need their whole row deleted. Notice the start_at & end_at are backwards and devoid of possible value, unless you know how to go back in time :sweat_smile:.</li>
<li>Now repeat these steps for all 12 sheets</li>
  </ol>
</details>  
<details>
<summary>Adding day_of_week</summary>
 <ol>
 <li>In your spreadsheet create a column called “day_of_week.” in Column O row 1.</li>  
 <li>In O2 enter "=WEEKDAY(C2,1)", 1 = Sunday and 7 = Saturday. Later if you prefer your Excel visuals to have the actual weekday name use "=TEXT(C2, "dddd")"</li>
 <li> Select O2 > press CTRL+C > use macros to autofill the column (web search) or in O3 hold CTRL+SHIFT+down-arrow key > paste, then find the last naturally filled row + 1 select that cell hold CTRL+SHIFT+the down key again and delete the invalid entries (Use PAGE UP & PAGE DOWN to move smoothly when close).</li>
<li>Now repeat these steps for all 12 sheets</li>
</ol>
</details>  
  
# The Excel Process: Time to Analyze:
<details>
<summary>Conduct descriptive analysis</summary>
</details>  




# Fin
Due to the amount of content, the file is too large to post on GitHub; a PNG image has to do.
