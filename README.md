# How to organize projects for sustainability and team work

The project readmes should reflect the current status of the project. The main purpose of these documents are onboarding new members to on-going or completed projects. While team members are in constant flux it would be impossible to keep track and share the status of projects. A secondary purpose is for ourselves, long lasting projects that have intermittent activity might be hard to keep track. We should be able to see the current status and get back to where we were after 6 months of inactivity on the project. R or Python packages can be part of the project but they have their own conventions and guidelines to follow. This project structure outline here is for data analysis projects. Even if you are developing a software package you will need to have such a project structure for publishing the paper about that software which will invariably include data analysis. 

## suggested project folder structure:

__TODO.md__ -> most important

__README.project__ → most important

__README.scripts__ → most important 

__README.data__ → most important 

__data/__ → can have other subfolders or linked data, README.data will be our guide to this folder

__scripts/__ → can have other subfolders README.scripts will be our guide to this folder

__docs/__ → (optional) any text document or reports that do not fit elsewhere goes here

__presentations/__  → (optional) any presentation done internally or externally should be here.

__any_other_folder/__  → (optional) any other folder that is needed for the organization of the project

## Coding conventions:
Workhorse of data analysis projects are scripts/notebooks.
On the top of the script, 
### Goal of the script
start with goal of the script. What is this script doing? . What data does the script take in and what it outputs. While this might be changing dynamically during the project. It is essential this part is kept up-to-date as much as possible. Especially when a script is producing essential plots or tables that will be needed for the publication or report. 

### Input/output summary
What does the script takes as input use comments and location of the files it takes as input
What are the outputs of the script? Describe in comments of any naming convetion or location of the output scripts
If the output is pre-defined you know exactly what you are outputing and where you can declare them here and comment

### Dependencies
After this section dependencies must be listed, it does not have to be in comments, you can rather call the libraries you will depend on towards the top of the script. All dependecies should be called on top of the script rather than in locations they are used for the first time. 

### I'm developing an R/python package do I need to follow these convetions? 
The data analysis project might depend on a python or R package you developed but they have different conventions to follow. For those sub-projects follow the conventions with reproducibility and usability in mind. You still will have to follow the convention laid out here when you are publishing the package or demonstrating it results. The package you develop is very likely to be used in a data analysis setting where it will be part of another project or it will have its own publication, for those tasks you need to use the project structure convetions laid out here. 

## When to update the READMEs?
Any major milestone is an opportunity to update the READMEs. Milestones are presentations, papers, progress meetings. Bi-yearly lab clean up meetings are also the time to keep these READMEs up-to-date. 

## What goes in TODO.md ?
This contains checklists for tasks, and who is responsible of doing them. These tasks are usually decided jointly in meetings, can be updated by individuals. The tasks has to be coded in urgency, importance and effort as high or low. Individual tasks that probably introduced after the meeting has to be marked. If we use something like trello in the future this file could contain a simple link to that platform.

Example:

- [ ] Make the plots for the paper (U:hi, I:hi, E: hi)
   - [x] clustering plot (Ahmet) (U:hi, I:hi, E: lo)
   - [x] heatmaps (Elodie) (U:hi, I:hi, E: lo)
   - [ ] feature importance plots (Ahmet)(U:lo, I:hi, E: lo)
       - [x] run feature importance
- [ ] Do this (U:lo, I:lo, E: lo)
- [ ] Do that (U:lo, I:lo, E: hi)

## What goes in README.project ?
This is the basic information about your project. Looking at this a newcomer should be able to understand what you are doing and what is the status. 

```YAML
---
Goals: What is the goal(s) of the project? What is this project trying to do? A newcomer has to understand what you wrote here.

Current status: What is the current status. What is achieved? what is not still working. 
                try to keep it to 3-4 sentences. A newcomer has to understand what you wrote here.

Roles: Who is involved in this project ?
   main driver: Who is doing the bulk of the analysis work. Writing code, processing data?
   support work: Who is helping out with ideas, pre-made scripts, know-how or small custom analysis?
   supervision: Who is doing the project management and has the birds-eye view

presentations: google drive or dropbox-alike link or multiple links or locations of presentations on our servers
   presentation: initial results and QC for raw data. 
      link: location or link
   presentation: Intermediate results, clustering for samples, initial regression models for x,y,z
      link: location or link
   presentation: Presentation that has the story flow and figures of the paper
      link: location or link

failed ideas: link to presentation or document where you collect the failed ideas.
               Failed ideas are avenues/paths you stopped pursuing because it didn’t work. 
               There is usually a figure or a table showing that the idea is failed. 
               Paste that figure/table to the document (google doc or slides). 
               This is very important to keep track number of failed ideas are our KPI. Also we don’t retry them this way.

draft paper: googledocs link to draft paper. Provide a link or write: no link yet. if there is no link

prerequisite reading:  which previously published papers are relevant for this project? Do not list more than 5.
   reading1: This paper deals with x,y,z. We have a similar approach here. 
      link: link to paper
   reading2: This paper deals with x cells. We also work on x cells for this project. 
      link: link to paper

prerequisite skills: What a newcomer needs to know to replicate what you have done and improve it? 
                     Does s/he need to know R, python, snakeMake, any particular packages? 

```

## What goes in README.scripts ?
__README.scripts__ contains which scripts are produced and what function/goal do they achieve in the project. The current workflow section has the ordered list of scripts that has to be run sequentially in order to achieve the current state of the project. The state of the project is defined by which figures and tables are needed to show the status of the project.

```YAML
----
main workflow: describe the sequential workflow of scripts to achieve the current state of the project.
                  Current state is defined by results, which are usually tables and figures that will go into a paper or report. 
   exampleScript.sh: This script aligns the reads
   callMeth.R: This script calls methylation and saves it RDS files
   cluster.R: This script clusters samples based on methylation and produces heatmaps 

Other scripts: Other scripts that are not part of the main workflow, they produce results that we are not sure that are relevant or things
              that are still in flux in terms of what to include in a report or paper.
               In addition, if the part or complete workflow is orchestrated by a single script then every other script in that is called by
               orchestrator workflow has to be documented here.
   runFastQC.sh: script running fastqc called within workflow script exampleScript.sh
   BarplotsForRead.R: script for plotting barplots of read lengths. Could be part of supplementary, currently only needed for sanity check.
   
unused scripts: unused scripts that are 
               produced for tasks that are not needed anymore for sure or they explored an idea but wasn't interesting to follow up. 
   rawReads.R: checking read length distribution, it is not used in the paper. 
               we thought there was something wrong with reads, there wasn't. 
   deepLearn.py: deepLearn the methytlation patterns, this didn't work because there wasn't enough data.
               We settled sth simpler later in. xyz script has the replacement approach.

```

## What goes in README.data ?
This readme introduces the reader where the data files are and any convention that we can glean from their naming. 
Again, a newcomer could see where your data is and what naming conventions you are using to figure out where the relevant data is.

```YAML
---
raw_data: where is raw data give location on /data. These are raw fastq files usually. What is in your raw_data folder
   naming_convention: is there a naming convention on these files, like pre-defined prefix or suffix that can give us clues?
processed_data: where is processed data? These are usually bam or VCF files, or methylation call files, bigwig. 
                What is in your raw_data folder, describe
   naming_convention: is there a naming convention on these files, like pre-defined prefix or suffix that can give us clues?
tertiary_data: where is the data your scripts produced using processed_data or raw_data. 
             These are intermediate or final tables that are used in subsequent analysis or as supplementary material.
             Describe in one short sentence what type of files are these.
   naming_convention: is there a naming convention on these files, like pre-defined prefix or suffix that can give us clues?
```
