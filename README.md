# Assignment

 1. Make a set of exercises for your project ([`project.Rmd`](project.Rmd)) that illustrate how your system works. The exercises should be possible to step through and discuss over the course of one lecture period and should highlight the interesting points about your system.
 2. Generate a `project_solutions.Rmd` file with solutions to the exercises and answers to the questions raised in ([`project.Rmd`](project.Rmd)). This will not be added to GitHub (anything with `solution` in the name is automatically excluded) but should be sent to your instructor for review and to your classmates after your presentation.
 3. Make sure to commit the rest of your project to GitHub so your classmates can pull the repository.

## Setup

1. Login: log into the RStudio Server with your username and password
2. Clone repository (with git previously configured in the [RMarkdown introduction](../assignment-rmarkdown-intro/)):
  - if you have an open project in your RStudio Server, close it by choosing **Close Project** from the **Project** dropdown button in the upper right corner (it should say `Project: (None)` afterwards)
  - at the top of this repository, click on the green **Clone or download** button and copy the shown link to the clipboard
  - in your R Server terminal (not the console), type `git clone ` and paste the copied link right after (so it says something to the effect `git clone https://github.com/......git`), then execute the command to creates a local copy of your GitHub repository (the new folder should show up in the files list on the right)
4. Load project:
 - click the **Project** dropdown button again and choose **Open Project**
 - navigate to the new project folder and select the `project.Rproj` file inside it
 - this will load a new R session rooted in the new project folder (you will see this project now selected in the **Project** dropdown)
