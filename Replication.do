Replication of "The Geography of Repression and Opposition to Autocracy". 
clear all
set more off
set seed 10001
ssc install plausexog, replace
ssc install ivreg2, replace
ssc install ranktest, replace
ssc install latab, replace
ssc install parmest, replace
ssc install binscatter, replace
ssc install psacalc, replace

global path "Paper Replication"
cap log using "${Paper Replication}/Logs/log_Tables.smcl",replace

global DATA  	"${Paper Replication}/Data/"
global TABLES 	"${Paper Replication}/Tables/"	
global FIGURES 	"${Paper Replication}/Figures/"	

use "C:\Users\Claudia Veliz\Downloads\dataverse_files (1)\Paper Replication\Data\FinalDatasetForReplication.dta", clear

cd "${TABLES}"

Main globals	
*Controls
global C "share_allende70 share_alessandri70 lnDistStgo lnDistRegCapital Pop70_pthousands sh_rural_70"	
*Weights
global W "Pop70"


 