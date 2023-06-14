# R Studio
* Luckily, this is the easiest part; the instructions are dated but still helpful.
* In truth, it may be possible just by using R. However, I use the IDE RStudio and suggest you do the same.
* Here's the instructions: [R Script](https://docs.google.com/document/d/1TTj5KNKf4BWvEORGm10oNbpwTRk1hamsWJGj6qRWpuI/edit)

## Installation
<details>
  <summary><strong>Software</strong></summary>
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
<em> Note: The point of this set of instructions is to answer "In what ways do members and casual riders use Divvy bikes differently?". We can use R to answer other questions as well. </em>

* In my opinion, to save on typing, you should consider copying the instructions listed at the top of this page into a new R script.
<details>
  <summary><strong>Instructions</strong></summary>
  
* File tab > New File > R Script. Copy the instructions and paste them into your new script, then: File tab > Save As > bike_riders.R <em>(or whatever file name you like).</em> 
</details>

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
  
  <details>
  <li><summary><strong>Now we check and set the director</strong></summary></li>
 
    * fdsafdsa
    *fdsafbvcbvcxbvcx
    
</details>
  
<li> It's time to upload the CSV files we cleaned earlier. </li>
</ol>
## Cleaning

## Analysis

## Exporting
