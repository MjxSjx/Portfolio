# R Studio
* Luckily, this is the easiest part; the instructions are dated but still helpful.
* In truth, it may be possible just by using R. However, I use the IDE RStudio and suggest you do the same.
* Here's the instructions: [R Script](https://docs.google.com/document/d/1TTj5KNKf4BWvEORGm10oNbpwTRk1hamsWJGj6qRWpuI/edit). You don't need them but it doens't hurt to follow along with them as well. 

## Installation
<details>
  <summary><strong>Details</strong></summary>
  
### Click here ➡️ [R](https://cloud.r-project.org/bin/windows/base/R-4.3.0-win.exe)

* I created an auto-download link because I find the CRAN website confusing 😵. 
* Keep in mind that R does not auto-update.
* Run through the setup, keeping all the default settings.

### Click here ➡️ [R Studio](https://download1.rstudio.org/electron/windows/RStudio-2023.06.0-421.exe)
* I created an auto-download link because why not.
* Keep in mind that RStudio does not auto-update, nor do the libraries. 
* Run through the setup, keeping all the default settings.
  
### Make sure you create a directory for your project
  * The far top-right has a tab just below the "Close tab" click it > New Project > name your directory and its location > Create Project.
  
<details>
  <summary><strong>Settings</strong></summary>
  
  * To change RStudio to nightmode: Tools > Global Options > appearance > Editor theme > "Tomorrow Night" is my current selection.
  * I prefer this pane layout. I ask that you consider it yourself. To change it: View > Panes > Pane Layout However, it is all preference: 
  
![RStudio](RStudio.PNG)
  
</details>

</details>

## Uploading 

<details>
    <summary><strong>Details</strong></summary>
<em> Note: The point of this set of instructions is to answer "In what ways do members and casual riders use Divvy bikes differently?". We can use R to answer other questions as well. </em>

* In my opinion, to save on typing, you should consider copying the instructions listed at the top of this page into a new R script or just load [mine](https://github.com/MjxSjx/Portfolio/blob/main/Case%20Study%201%20-%20bike-share%20analysis/R%20Results/bike_riders.R).
<details>
  <summary><strong>Instructions</strong></summary>
  
* File tab > New File > R Script. Copy the instructions and paste them into your new script, then: File tab > Save As > bike_riders.R <em>(or whatever file name you like).</em> 

<ol>
<li> We potentially need to install tidyverse. <em> It's likely you already have it, and if you took the Coursera Google Data Analytics course and followed their instructions word for word, you installed tidyverse like 15 times 🤣. </em> </li>
<details>
  <summary><strong>Install Packages</strong></summary>
  
* install.packages("tidyverse")
* install.packages("lubridate") <em># This comes with tidyverse, I dunno why its listed </em>
* install.packages("ggplot2") <em># This comes with tidyverse, I dunno why its listed </em>
</details>
  
<li> After installing the libraries, you still need to load them. This is where copying the instructions into an R script is so helpful. simply highlight the 3 lines 12-14 and then hold CTRL+ENTER or click the "Run" button at the top-right of the Script tab. </li>
  <details>
  <summary><strong>Load Packages</strong></summary>
    
* library(tidyverse) 
* library(lubridate)  <em># This loads with tidyverse, I dunno why its listed either </em>
* library(ggplot2)  <em># This loads with tidyverse, I dunno why its listed either </em>
</details>

<li>Now we check and set the directory.</li>
  
  <details>
    <summary><strong>Check and Set Directory</strong></summary>
    
* getwd() <em># displays your working directory</em>
* setwd("Your Directory location") <em># sets your working directory </em>
 </details>
  
<li> It's time to upload the CSV files we cleaned earlier. </li>
    <details>
    <summary><strong>CSV files</strong></summary>
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
    <summary><strong>Checking column names </strong></summary>
        
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
  
<li> There is no need to rename columns or use mutate() on "ride_id" or "rideable_type". </li>
    <details>
 <summary><strong>Checking column names </strong></summary>
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
  
## Cleaning

  <details>
    <summary><strong>Details</strong></summary>
<ol>
<li> Things. <em> stuff</em> </li>
<details>
  <summary><strong>Removing columns</strong></summary>
  <em> birthyear and gender do not exist in our files</em>
  
* all_trips <- all_trips %>%  
  select(-c(start_lat, start_lng, end_lat, end_lng))
  
</details>
</ol>
 
 </details>
      
## Analysis

## Exporting
