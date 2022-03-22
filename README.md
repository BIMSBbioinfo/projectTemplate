# How to organize projects for sustainability and team work

The project readmes should reflect the current status of the project. The main purpose of these documents are onboarding new members to on-going or completed projects. While team members are in constant flux it would be impossible to keep track and share the status of projects. A secondary purpose is for ourselves, long lasting projects that have intermittent activity might be hard to keep track. We should be able to see the current status and get back to where we were after 6 months of inactivity on the project. R or Python packages can be part of the project but they have their own conventions and guidelines to follow. This project structure outline here is for data analysis projects. Even if you are developing a software package you will need to have such a project structure for publishing the paper about that software which will invariably include data analysis. 

## suggested project folder structure:

README.project → most important

README.scripts → most important 

README.data → most important 

data/ → can have other subfolders or linked data, [README.data](http://README.data) will be our guide to this folder

scripts/ → can have other subfolders README.scripts will be our guide to this folder

docs/ → (optional) any text document or reports that do not fit elsewhere goes here

presentations/  → (optional) any presentation done internally or externally should be here.

any_other_folder/  → (optional) any other folder that is needed for the organization of the project

## Coding conventions:
Workhorse of data analysis projects are scripts/notebooks. On the top of the script, start with goal of the script. What is this script doing? then provide Input/output summary. What data does the script take in and what it outputs. While this might be changing dynamically during the project. It is essential this part is kept up-to-date as much as possible. Especially when a script is producing essential plots or tables that will be needed for the publication or report. 

After this section dependencies must be listed, it does not have to be in comments, you can rather call the libraries you will depend on towards the top of the script. All dependecies should be called on top of the script rather than in locations they are used for the first time. 

The data analysis project might depend on a python or R package you developed but they have different conventions to follow. For those sub-projects follow the conventions with reproducibility and usability in mind.



## What goes in README.project ?
```
---
Goals: What is the goal(s) of the project? What is this project trying to do? A newcomer has to understand what you wrote here.

Current status: What is the current status. What is achieved? what is not still working. try to keep it to 3-4 sentences. A newcomer has to understand what you wrote here.

presentations:google drive or dropbox-alike link or multiple links or locations of presentations on our servers

failed ideas: link to presentation or document where you collect the failed ideas. Failed ideas are avenues/paths you stopped pursuing because it didn’t work. There is usually a figure or a table showing that the idea is failed. Paste that figure/table to the document (google doc or slides). This is very important to keep track number of failed ideas are our KPI. Also we don’t retry them.

draft paper: googledocs link to draft paper. Provide a link or write: no link yet. if there is no link

prerequisite_reading:  which previously published papers are relevant for this project? Do not list more than 5.

paper1: This paper deals with x,y,z. We have a similar approach here. link to paper

paper2: This paper deals with x cells. We also work on x cells for this project. link to paper

prerequisite_skills: What a newcomer needs to know to replicate what you have done and improve it? Does s/he need to know R, python, snakeMake, any particular packages? 
```

## What goes in README.scripts ?

```
----
current workflow: describe the sequential workflow of scripts to achieve the current state of the project. Current state is defined by results which are usually tables and figures. 
   exampleScript.sh: This script aligns the reads
   callMeth.R: This script calls methylation and saves it RDS files
   cluster.R: This script clusters samples based on methylation and produces heatmaps 

Other scripts: Other scripts that are not part of the current workflow and describe wgat 

```
## What goes in README.data ?

     raw_data: where is raw data give location on /data. These are raw fastq files usually 

    naming_convention: is there a naming convention on these files. Like pre-defined prefix or suffix that can give us clues?

     processed_data: where is processed data? These are usually bam or VCF files, or methylation call files, bigwig 

    naming_convention: is there a naming convention on these files. Like pre-defined prefix or suffix that can give us clues?

   tertiary_data: where is the data your scripts produced mostly like using processed_data. These are intermediate or final tables that are used in subsequent analysis
