#Goal: script to compare hyper methylated genes from two replicates we have
# we will be able to see if how much they overlap and visualize the results using this script

#--- DEPENDECIES  
library(methylKit)
library(ggplot2)
source("scripts/sporadicFunctions.R") # functions written for this project

#--- INPUT files
## read refseq  symbols
refsymb=read.table("data/mm10.refFlat.txt",header=TRUE)

## read gene associated methylation scores
mut2wt2=read.table("data/diffMeth.ranking.mut2wt.rep2.txt",header=T)

mut2wt=read.table("data/diffMeth.ranking.mut2wt.txt",header=T)

#--- OUTPUT files
# output files have `.compareHypo.hyper.txt` suffix


# get hyper-hypo genes
