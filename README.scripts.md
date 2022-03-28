## location
Where are your scripts? write the location in /data 
If they are in disprate locations (not in one central "scripts" folder with sub-folders) list them, and ask yourself why arent they all in one folder.

## main workflow: 
describe the sequential workflow of scripts to achieve the current state of the project.
Current state is defined by results, which are usually tables and figures that will go into a paper or report. 
**List the names of the scripts with short explanation of what they do. Example below**
 - exampleScript.sh: This script aligns the reads
 - callMeth.R: This script calls methylation and saves it RDS files
 - cluster.R: This script clusters samples based on methylation and produces heatmaps 

## Other scripts: 
Other scripts that are not part of the main workflow, they produce results that we are not sure that are relevant or things
that are still in flux in terms of what to include in a report or paper.
In addition, if the part or complete workflow is orchestrated by a single script then every other script in that is called by
orchestrator workflow has to be documented here.
**List the names of the scripts with short explanation of what they do. Example below**
  
 - runFastQC.sh: script running fastqc called within workflow script exampleScript.sh
 - BarplotsForRead.R: script for plotting barplots of read lengths. Could be part of supplementary, currently only needed for sanity check.
   
## unused scripts
unused scripts that are  produced for tasks that are not needed anymore for 
sure or they explored an idea but wasn't interesting to follow up. 
**List the names of the scripts with short explanation of what they do. Example below**

- rawReads.R: checking read length distribution, it is not used in the paper. we thought there was something wrong with reads, there wasn't. 
- deepLearn.py: deepLearn the methytlation patterns, this didn't work because there wasn't enough data. We settled sth simpler later in. xyz script has the replacement approach.
