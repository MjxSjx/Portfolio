# R Studio
* This option has instructions; parts are dated, while other parts are outright wrong and not based on how the process steps add "ride_length," specifically the data type that the steps create. As a template, it is helpful, but if you don't know R very well or understand your data types and format types, the instructions just set you up for confusion. Which is where I was for a duration 😵.
* In truth, it may be possible to finish this just by using R. However, I use the IDE RStudio and suggest you do the same.
* Here's the instructions: [R Script](https://docs.google.com/document/d/1TTj5KNKf4BWvEORGm10oNbpwTRk1hamsWJGj6qRWpuI/edit). You don't need them but it doens't hurt to follow along with them as well.  

## Installation
<details>
  <summary><strong>Details</strong></summary>
  
### Click here ➡️ [R](https://cloud.r-project.org/bin/windows/base/R-4.3.0-win.exe)

* I created an auto-download link because I find the CRAN website confusing 😵. 
* Keep in mind that R does not auto-update. Also, that old versions stay on your hard drive.
* Run through the setup, keeping all the default settings.

### Click here ➡️ [R Studio](https://download1.rstudio.org/electron/windows/RStudio-2023.06.0-421.exe)
* I created an auto-download link because why not.
* Keep in mind that RStudio does not auto-update, nor do the libraries, but it will prompt you when updates are available. 
* Run through the setup, keeping all the default settings.
  
### Make sure you create a directory for your project
  * The far top-right has a tab just below the RStudio "Close tab" click it > New Project > New Directory > New Project >  name your directory and its location > Create Project.
  
<details>
  <summary><strong>Settings</strong></summary> 
  
  * To change RStudio to nightmode: Tools > Global Options > Appearance > Editor theme > "Tomorrow Night" is my current selection.
  * I prefer this pane layout. I ask that you consider it yourself. To change it: View > Panes > Pane Layout. However, it is all preference: 
  
![RStudio](RStudio.PNG)
  
</details>

</details>

## Uploading 

<details>
    <summary><strong>Details</strong></summary>
<em> Note: The point of this set of instructions is to answer "In what ways do members and casual riders use Divvy bikes differently?". </em> We can use R to answer other questions as well.
  
* In my opinion, to save on typing, you should copy the instructions listed at the top of this page into a new R script or copy [mine](https://github.com/MjxSjx/Portfolio/blob/main/Case%20Study%201%20-%20bike-share%20analysis/R%20Results/bike_riders.R) which is what i'll be using for this guide. 
* File tab > New File > R Script. Copy the instructions and paste them into your new script, then: File tab > Save As > bike_riders.R <em>(or whatever file name you like).</em> 
  
<details>
  <summary><strong>Instructions</strong></summary>
  
<ol>
<li> We potentially need to install tidyverse. <em> It's likely you already have it installed if you took the Coursera Google Data Analytics course and followed their instructions word for word, you installed tidyverse like 15 times 🤣. </em> </li>
<details>
  <summary><strong>Install Packages</strong></summary>
  
* install.packages("tidyverse")
* <em> We do not need "lubridate" and "ggplot2" installed because "tidyverse" already comes with them. </em>
</details>
  
<li> After installing the libraries, you still need to load them. This is where copying the instructions into an R script is so helpful. simply highlight the line that reads "library(tidyverse)" and then hold CTRL+ENTER or click the "Run" button at the top-right of the Script tab. </li>
  <details>
  <summary><strong>Load Packages</strong></summary>
    
* library(tidyverse) 
* <em> We do not need "lubridate" and "ggplot2" loaded because "tidyverse" already does that for us. </em>
</details>

<li>Now we check and set the directory.</li>
  
  <details>
    <summary><strong>Check and Set Directory</strong></summary>
    
* getwd() <em># displays your working directory</em>
* setwd("Your Directory location") <em># sets your working directory </em>
* getwd() <em># check you set your directory correctly</em>
    
 </details>
  
<li> It's time to upload the CSV files we cleaned earlier. </li>
    <details>
    <summary><strong>CSV Files</strong></summary>
      <em>Simple file names mean less typing</em>
      
* db1 <- read_csv("202205-tripdata.csv")
* db2 <- read_csv("202206-tripdata.csv")
* db3 <- read_csv("202207-tripdata.csv")
* db4 <- read_csv("202208-tripdata.csv")
* db5 <- read_csv("202209-tripdata.csv")
* db6 <- read_csv("202210-tripdata.csv")
* db7 <- read_csv("202211-tripdata.csv")
* db8 <- read_csv("202212-tripdata.csv")
* db9 <- read_csv("202301-tripdata.csv")
* db10 <- read_csv("202302-tripdata.csv")
* db11 <- read_csv("202303-tripdata.csv")
* db12 <- read_csv("202304-tripdata.csv")

<em>Check your "Enviroment" tab that all 12 files are loaded in R Studio</em>
       </details>
  
  <li> Check once again the all 12 column names are consistent. </li>
      <details>
    <summary><strong>Checking Column Names </strong></summary>
        
* colnames(db1)
* colnames(db2)
* colnames(db3)
* colnames(db4)
* colnames(db5)
* colnames(db6)
* colnames(db7)
* colnames(db8)
* colnames(db9)
* colnames(db10)
* colnames(db11)
* colnames(db12)
    </details>
  
<li> There is no need to rename columns or use mutate() on "ride_id" or "rideable_type" If you're using data post 2020. </li>
    <details>
 <summary><strong> Double Checking Column Names </strong></summary>
  <em> Simply check the structure of each file </em>
 
* str(db1)
* str(db2)
* str(db3)
* str(db4)
* str(db5)
* str(db6)
* str(db7)
* str(db8)
* str(db9)
* str(db10)
* str(db11)
* str(db12)
      
<em>Notice all column names are already correct and both columns listed directly above are already labeled as "col_character()"</em>
</ol>
  
</details>
</details>
  
## Cleaning & Combining

  <details>
    <summary><strong>Details</strong></summary>
<ol>
 <li>Making one large data frame.</li> 
 <details>
 <summary><strong>Combining</strong></summary>

* all_trips <- bind_rows(db1,db2,db3,db4,db5,db6,db7,db8,db9,db10,db11,db12)   
  </details>
   
<li> The .PDF instructions have us removing some columns. We don't <em>"need to"</em> though. Deeper investigations can be done if they are left, however they are investigations already covered in my SQL guide. </li>
<details>
  <summary><strong>Removing Columns</strong></summary>
  <em> birthyear and gender only apply to data 2020 and older and do not exist in our files. </em> 
  
* all_trips <- all_trips %>%  select(-c(start_lat, start_lng, end_lat, end_lng))
  
</details>

<li> Changing "ride_length" to coporate with us. </li> 
<details>
  <summary><strong> Changing "ride_length" </strong></summary>
  <em> This was a pain.  The standard instructions will not work. The solution is simple but understanding how and why every other solution broke the syntax took me half a day. Feel free to solve this yourself. The answer will always be here waiting for you. </em> 
<details>
  <summary><strong> <em>Spoiler Ahead! </em></strong></summary>
  
* all_trips$ride_length <- as.numeric(as.POSIXlt(all_trips$ride_length, format = "%H:%M:%S"))

</details> 
</details>  
  
<li> Inspecting the new table we've created. </li>  
<details>
  <summary><strong>Inspection Syntax</strong></summary>
  <em> This is all important information about our data frame. </em> 
  
* colnames(all_trips)  #List of column names
* nrow(all_trips)  #How many rows are in data frame?
* dim(all_trips)  #Dimensions of the data frame?
* head(all_trips)  #See the first 6 rows of data frame.  Also tail(all_trips)
* str(all_trips)  #See list of columns and data types (numeric, character, etc)
* summary(all_trips)  #Statistical summary of data. Mainly for numerics
  
</details>  
  
<li> There is no need to use mutate() on "casual_member" that only apply to data 2020 and older. </em> </li>   
<details>
  <summary><strong>Checking Column "member_casual"</strong></summary>
    <em> Run this code to prove to yourself you're in the clear </em>
  
* distinct_values <- unique(all_trips$member_casual)
* print(distinct_values)

 <em> Notice your results are only "casual" and "member" </em>                     
</details>  

<li> Adding a "date" column.</em>     
<details>
  <summary><strong>Adding Date</strong></summary>
   <em> This too caused a headache for me, although not as severe. The standard instructions will not work. </em>

  <details>
  <summary><strong>Spoilers Ahead! </strong></summary>
    
* all_trips$date <- as.Date(all_trips$started_at) #The default format is yyyy-mm-dd

  </details>

<li> Adding month, day, and year of each ride. </em>       
<details>
 <summary><strong>Adding Columns. </strong></summary>
  
* all_trips$month <- format(as.Date(all_trips$date), "%m")
* all_trips$day <- format(as.Date(all_trips$date), "%d")
* all_trips$year <- format(as.Date(all_trips$date), "%Y")
* all_trips$day_of_week <- format(as.Date(all_trips$date), "%A")

</details>  
</details>

</ol>
 
</details>
      
  
## Analysis

## Exporting
