*Sarkar, B., Dutta, S., & Singh, P. K. (2022). Drought and temporary migration in rural India: A comparative study
///across different socio-economic groups with a cross-sectional nationally representative dataset. PLoS 
///ONE, 17(10), e0275449. https://doi.org/10.1371/journal.pone.0275449

*****dataset overall Ori*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("Ori") firstrow

*summary statistic  
asdoc tab1 dTemporaryMigra idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_socialgroup iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate, replace

*descriptic statistic 
asdoc tabulate idrought40 dTemporaryMigra, chi2 row
asdoc tabulate iflood40 dTemporaryMigra, chi2 row
asdoc tabulate iHH_size dTemporaryMigra, chi2 row
asdoc tabulate iHH_migratedout dTemporaryMigra, chi2 row
asdoc tabulate iHH_religion dTemporaryMigra, chi2 row
asdoc tabulate iHH_socialgroup dTemporaryMigra, chi2 row
asdoc tabulate iHH_land dTemporaryMigra, chi2 row
asdoc tabulate iHH_type dTemporaryMigra, chi2 row
asdoc tabulate iMPCE_EG dTemporaryMigra, chi2 row
asdoc tabulate B4_c4iHHH_sex dTemporaryMigra, chi2 row
asdoc tabulate iHHH_age dTemporaryMigra, chi2 row
asdoc tabulate iHHH_marital dTemporaryMigra, chi2 row
asdoc tabulate iHHH_education dTemporaryMigra, chi2 row
asdoc tabulate istate dTemporaryMigra, chi2 row

*logistic regression
logistic dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_socialgroup i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate

*multiple linear regression 
regress dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_socialgroup i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate, eform(exp(Coef.))

*correlation matrix 
pwcorr idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_socialgroup iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate dTemporaryMigra, sig

*multicolleniarity test
asdoc estat vif

*heteroskedasticity test 
asdoc estat hettest 

*****dataset economic group 1 EG1*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("EG1") firstrow

*summary statistic  
asdoc tab1 dTemporaryMigra idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_socialgroup iHH_land iHH_type B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate, replace

*descriptic statistic 
asdoc tabulate idrought40 dTemporaryMigra, chi2 row
asdoc tabulate iflood40 dTemporaryMigra, chi2 row
asdoc tabulate iHH_size dTemporaryMigra, chi2 row
asdoc tabulate iHH_migratedout dTemporaryMigra, chi2 row
asdoc tabulate iHH_religion dTemporaryMigra, chi2 row
asdoc tabulate iHH_socialgroup dTemporaryMigra, chi2 row
asdoc tabulate iHH_land dTemporaryMigra, chi2 row
asdoc tabulate iHH_type dTemporaryMigra, chi2 row
asdoc tabulate B4_c4iHHH_sex dTemporaryMigra, chi2 row
asdoc tabulate iHHH_age dTemporaryMigra, chi2 row
asdoc tabulate iHHH_marital dTemporaryMigra, chi2 row
asdoc tabulate iHHH_education dTemporaryMigra, chi2 row
asdoc tabulate istate dTemporaryMigra, chi2 row

*logistic regression
logistic dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_socialgroup i.iHH_land i.iHH_type i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate

*multiple regression 
regress dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_socialgroup i.iHH_land i.iHH_type i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate, eform(exp(Coef.))

*correlation matrix 
pwcorr idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_socialgroup iHH_land iHH_type B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate dTemporaryMigra, sig

*multicolleniarity test
asdoc estat vif

*heteroskedasticity test 
asdoc estat hettest 


*****dataset economic group 2 EG2*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("EG2") firstrow

*summary statistic  
asdoc tab1 dTemporaryMigra idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_socialgroup iHH_land iHH_type B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate, replace

*descriptic statistic 
asdoc tabulate idrought40 dTemporaryMigra, chi2 row
asdoc tabulate iflood40 dTemporaryMigra, chi2 row
asdoc tabulate iHH_size dTemporaryMigra, chi2 row
asdoc tabulate iHH_migratedout dTemporaryMigra, chi2 row
asdoc tabulate iHH_religion dTemporaryMigra, chi2 row
asdoc tabulate iHH_socialgroup dTemporaryMigra, chi2 row
asdoc tabulate iHH_land dTemporaryMigra, chi2 row
asdoc tabulate iHH_type dTemporaryMigra, chi2 row
asdoc tabulate B4_c4iHHH_sex dTemporaryMigra, chi2 row
asdoc tabulate iHHH_age dTemporaryMigra, chi2 row
asdoc tabulate iHHH_marital dTemporaryMigra, chi2 row
asdoc tabulate iHHH_education dTemporaryMigra, chi2 row
asdoc tabulate istate dTemporaryMigra, chi2 row

*logistic regression
logistic dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_socialgroup i.iHH_land i.iHH_type i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate

*multiple regression 
regress dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_socialgroup i.iHH_land i.iHH_type i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate, eform(exp(Coef.))

*correlation matrix 
pwcorr idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_socialgroup iHH_land iHH_type B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate dTemporaryMigra, sig

*multicolleniarity test
asdoc estat vif

*heteroskedasticity test 
asdoc estat hettest 


*****dataset economic group 3 EG3*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("EG3") firstrow

*summary statistic  
asdoc tab1 dTemporaryMigra idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_socialgroup iHH_land iHH_type B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate, replace

*descriptic statistic 
asdoc tabulate idrought40 dTemporaryMigra, chi2 row
asdoc tabulate iflood40 dTemporaryMigra, chi2 row
asdoc tabulate iHH_size dTemporaryMigra, chi2 row
asdoc tabulate iHH_migratedout dTemporaryMigra, chi2 row
asdoc tabulate iHH_religion dTemporaryMigra, chi2 row
asdoc tabulate iHH_socialgroup dTemporaryMigra, chi2 row
asdoc tabulate iHH_land dTemporaryMigra, chi2 row
asdoc tabulate iHH_type dTemporaryMigra, chi2 row
asdoc tabulate B4_c4iHHH_sex dTemporaryMigra, chi2 row
asdoc tabulate iHHH_age dTemporaryMigra, chi2 row
asdoc tabulate iHHH_marital dTemporaryMigra, chi2 row
asdoc tabulate iHHH_education dTemporaryMigra, chi2 row
asdoc tabulate istate dTemporaryMigra, chi2 row

*logistic regression
logistic dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_socialgroup i.iHH_land i.iHH_type i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate

*multiple regression 
regress dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_socialgroup i.iHH_land i.iHH_type i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate, eform(exp(Coef.))

*correlation matrix 
pwcorr idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_socialgroup iHH_land iHH_type B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate dTemporaryMigra, sig

*multicolleniarity test
asdoc estat vif

*heteroskedasticity test 
asdoc estat hettest 


*****dataset Social Group 1 SG1*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.1.xlsx", sheet("SG1") firstrow

*summary statistic  
asdoc tab1 dTemporaryMigra idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate, replace

*descriptic statistic 
asdoc tabulate idrought40 dTemporaryMigra, chi2 row
asdoc tabulate iflood40 dTemporaryMigra, chi2 row
asdoc tabulate iHH_size dTemporaryMigra, chi2 row
asdoc tabulate iHH_migratedout dTemporaryMigra, chi2 row
asdoc tabulate iHH_religion dTemporaryMigra, chi2 row
asdoc tabulate iHH_land dTemporaryMigra, chi2 row
asdoc tabulate iHH_type dTemporaryMigra, chi2 row
asdoc tabulate iMPCE_EG dTemporaryMigra, chi2 row
asdoc tabulate B4_c4iHHH_sex dTemporaryMigra, chi2 row
asdoc tabulate iHHH_age dTemporaryMigra, chi2 row
asdoc tabulate iHHH_marital dTemporaryMigra, chi2 row
asdoc tabulate iHHH_education dTemporaryMigra, chi2 row
asdoc tabulate istate dTemporaryMigra, chi2 row

*logistic regression
logistic dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate

*multiple regression 
regress dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate, eform(exp(Coef.))

*correlation matrix 
pwcorr idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate dTemporaryMigra, sig

*multicolleniarity test
asdoc estat vif

*heteroskedasticity test 
asdoc estat hettest 


*****dataset Social Group 2 SG2*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.1.xlsx", sheet("SG2") firstrow

*summary statistic  
asdoc tab1 dTemporaryMigra idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate, replace

*descriptic statistic 
asdoc tabulate idrought40 dTemporaryMigra, chi2 row
asdoc tabulate iflood40 dTemporaryMigra, chi2 row
asdoc tabulate iHH_size dTemporaryMigra, chi2 row
asdoc tabulate iHH_migratedout dTemporaryMigra, chi2 row
asdoc tabulate iHH_religion dTemporaryMigra, chi2 row
asdoc tabulate iHH_land dTemporaryMigra, chi2 row
asdoc tabulate iHH_type dTemporaryMigra, chi2 row
asdoc tabulate iMPCE_EG dTemporaryMigra, chi2 row
asdoc tabulate B4_c4iHHH_sex dTemporaryMigra, chi2 row
asdoc tabulate iHHH_age dTemporaryMigra, chi2 row
asdoc tabulate iHHH_marital dTemporaryMigra, chi2 row
asdoc tabulate iHHH_education dTemporaryMigra, chi2 row
asdoc tabulate istate dTemporaryMigra, chi2 row

*logistic regression
logistic dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate

*multiple regression 
regress dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate, eform(exp(Coef.))

*correlation matrix 
pwcorr idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate dTemporaryMigra, sig

*multicolleniarity test
asdoc estat vif

*heteroskedasticity test 
asdoc estat hettest 


*****dataset Social Group 3 SG3*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.1.xlsx", sheet("SG3") firstrow

*summary statistic  
asdoc tab1 dTemporaryMigra idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate, replace

*descriptic statistic 
asdoc tabulate idrought40 dTemporaryMigra, chi2 row
asdoc tabulate iflood40 dTemporaryMigra, chi2 row
asdoc tabulate iHH_size dTemporaryMigra, chi2 row
asdoc tabulate iHH_migratedout dTemporaryMigra, chi2 row
asdoc tabulate iHH_religion dTemporaryMigra, chi2 row
asdoc tabulate iHH_land dTemporaryMigra, chi2 row
asdoc tabulate iHH_type dTemporaryMigra, chi2 row
asdoc tabulate iMPCE_EG dTemporaryMigra, chi2 row
asdoc tabulate B4_c4iHHH_sex dTemporaryMigra, chi2 row
asdoc tabulate iHHH_age dTemporaryMigra, chi2 row
asdoc tabulate iHHH_marital dTemporaryMigra, chi2 row
asdoc tabulate iHHH_education dTemporaryMigra, chi2 row
asdoc tabulate istate dTemporaryMigra, chi2 row

*logistic regression
logistic dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate

*multiple regression 
regress dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate, eform(exp(Coef.))

*correlation matrix 
pwcorr idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate dTemporaryMigra, sig

*multicolleniarity test
asdoc estat vif

*heteroskedasticity test 
asdoc estat hettest 


*****dataset Social Group 4 SG4*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.1.xlsx", sheet("SG4") firstrow

*summary statistic  
asdoc tab1 dTemporaryMigra idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate, replace

*descriptic statistic 
asdoc tabulate idrought40 dTemporaryMigra, chi2 row
asdoc tabulate iflood40 dTemporaryMigra, chi2 row
asdoc tabulate iHH_size dTemporaryMigra, chi2 row
asdoc tabulate iHH_migratedout dTemporaryMigra, chi2 row
asdoc tabulate iHH_religion dTemporaryMigra, chi2 row
asdoc tabulate iHH_land dTemporaryMigra, chi2 row
asdoc tabulate iHH_type dTemporaryMigra, chi2 row
asdoc tabulate iMPCE_EG dTemporaryMigra, chi2 row
asdoc tabulate B4_c4iHHH_sex dTemporaryMigra, chi2 row
asdoc tabulate iHHH_age dTemporaryMigra, chi2 row
asdoc tabulate iHHH_marital dTemporaryMigra, chi2 row
asdoc tabulate iHHH_education dTemporaryMigra, chi2 row
asdoc tabulate istate dTemporaryMigra, chi2 row

*logistic regression
logistic dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate

*multiple regression 
regress dTemporaryMigra i.idrought40 i.iflood40 i.iHH_size i.iHH_migratedout i.iHH_religion i.iHH_land i.iHH_type i.iMPCE_EG i.B4_c4iHHH_sex i.iHHH_age i.iHHH_marital i.iHHH_education i.istate, eform(exp(Coef.))

*correlation matrix 
pwcorr idrought40 iflood40 iHH_size iHH_migratedout iHH_religion iHH_land iHH_type iMPCE_EG B4_c4iHHH_sex iHHH_age iHHH_marital iHHH_education istate dTemporaryMigra, sig

*multicolleniarity test
asdoc estat vif

*heteroskedasticity test 
asdoc estat hettest 


*****dataset individual overall Ori*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_6.xlsx", sheet("Ori") firstrow

*logistic regression
logistic Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Social_group i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state 

*multiple regression 
regress Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Social_group i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state, eform(exp(Coef.))


*****dataset individual economic group 1 EG1*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_6EG.xlsx", sheet("EG1") firstrow

*logistic regression
logistic Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Social_group i.Land_possession i.Occupation_type i.Sex i.Age i.Marital_status i.Educational_level i.state 

*multiple regression 
regress Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Social_group i.Land_possession i.Occupation_type i.Sex i.Age i.Marital_status i.Educational_level i.state, eform(exp(Coef.))


*****dataset individual economic group 2 EG2*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_6EG.xlsx", sheet("EG2") firstrow

*logistic regression
logistic Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Social_group i.Land_possession i.Occupation_type i.Sex i.Age i.Marital_status i.Educational_level i.state 

*multiple regression 
regress Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Social_group i.Land_possession i.Occupation_type i.Sex i.Age i.Marital_status i.Educational_level i.state, eform(exp(Coef.))


*****dataset individual economic group 3 EG3*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_6EG.xlsx", sheet("EG3") firstrow

*logistic regression
logistic Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Social_group i.Land_possession i.Occupation_type i.Sex i.Age i.Marital_status i.Educational_level i.state 

*multiple regression 
regress Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Social_group i.Land_possession i.Occupation_type i.Sex i.Age i.Marital_status i.Educational_level i.state, eform(exp(Coef.))


*****dataset individual social group 1 SG1*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_6SG.xlsx", sheet("SG1") firstrow

*logistic regression
logistic Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state 

*multiple regression 
regress Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state, eform(exp(Coef.))


*****dataset individual social group 2 SG2*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_6SG.xlsx", sheet("SG2") firstrow

*logistic regression
logistic Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state 

*multiple regression 
regress Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state, eform(exp(Coef.))


*****dataset individual social group 3 SG3*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_6SG.xlsx", sheet("SG3") firstrow

*logistic regression
logistic Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state 

*multiple regression 
regress Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state, eform(exp(Coef.))


*****dataset individual social group 4 SG4*****

*clear memory
clear

*import dataset
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_6SG.xlsx", sheet("SG4") firstrow

*logistic regression
logistic Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state 

*multiple regression 
regress Temporary_migration i.Drought_moderate i.Flood_moderate i.Household_size i.Household_history_of_migration i.Religion i.Land_possession i.Occupation_type i.MPCE_EG i.Sex i.Age i.Marital_status i.Educational_level i.state, eform(exp(Coef.))


*****Ori*****
clear 
use "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta"
sort Key_hhold
save "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", replace 
clear 
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("Ori") firstrow
merge m:m Key_hhold using "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", gen (_mergeR1R2)
keep if _mergeR1R2==3

*summary statistics  
by dTemporaryMigra, sort: egen s1 = sum(wgt_combined)
format %20.0g s1
table dTemporaryMigra, contents(mean s1) 

by idrought40, sort: egen s2 = sum(wgt_combined)
format %20.0g s2
table idrought40, contents(mean s2)

by iflood40, sort: egen s3 = sum(wgt_combined)
format %20.0g s3
table iflood40, contents(mean s3) 

by iHH_size, sort: egen s4 = sum(wgt_combined)
format %20.0g s4
table iHH_size, contents(mean s4) 

by iHH_migratedout, sort: egen s5 = sum(wgt_combined)
format %20.0g s5
table iHH_migratedout, contents(mean s5) 

by iHH_religion, sort: egen s6 = sum(wgt_combined)
format %20.0g s6
table iHH_religion, contents(mean s6) 

by iHH_socialgroup, sort: egen s7 = sum(wgt_combined)
format %20.0g s7
table iHH_socialgroup, contents(mean s7) 

by iHH_land, sort: egen s8 = sum(wgt_combined)
format %20.0g s8
table iHH_land, contents(mean s8) 

by iHH_type, sort: egen s9 = sum(wgt_combined)
format %20.0g s9
table iHH_type, contents(mean s9) 

by iMPCE_EG, sort: egen s10 = sum(wgt_combined)
format %20.0g s10
table iMPCE_EG, contents(mean s10) 

by B4_c4iHHH_sex, sort: egen s11 = sum(wgt_combined)
format %20.0g s11
table B4_c4iHHH_sex, contents(mean s11) 

by iHHH_age, sort: egen s12 = sum(wgt_combined)
format %20.0g s12
table iHHH_age, contents(mean s12) 

by iHHH_marital, sort: egen s13 = sum(wgt_combined)
format %20.0g s13
table iHHH_marital, contents(mean s13) 

by iHHH_education, sort: egen s14 = sum(wgt_combined)
format %20.0g s14
table iHHH_education, contents(mean s14) 

by istate, sort: egen s15 = sum(wgt_combined)
format %20.0g s15
table istate, contents(mean s15) 

*descriptive statistics 
by idrought40 dTemporaryMigra, sort: egen d1 = sum(wgt_combined)
format %20.0g d1
table idrought40 dTemporaryMigra, contents(mean d1)

by iflood40 dTemporaryMigra, sort: egen d2 = sum(wgt_combined)
format %20.0g d2
table iflood40 dTemporaryMigra, contents(mean d2) 

by iHH_size dTemporaryMigra, sort: egen d3 = sum(wgt_combined)
format %20.0g d3
table iHH_size dTemporaryMigra, contents(mean d3) 

by iHH_migratedout dTemporaryMigra, sort: egen d4 = sum(wgt_combined)
format %20.0g d4
table iHH_migratedout dTemporaryMigra, contents(mean d4) 

by iHH_religion dTemporaryMigra, sort: egen d5 = sum(wgt_combined)
format %20.0g d5
table iHH_religion dTemporaryMigra, contents(mean d5) 

by iHH_socialgroup dTemporaryMigra, sort: egen d6 = sum(wgt_combined)
format %20.0g d6
table iHH_socialgroup dTemporaryMigra, contents(mean d6) 

by iHH_land dTemporaryMigra, sort: egen d7 = sum(wgt_combined)
format %20.0g d7
table iHH_land dTemporaryMigra, contents(mean d7) 

by iHH_type dTemporaryMigra, sort: egen d8 = sum(wgt_combined)
format %20.0g d8
table iHH_type dTemporaryMigra, contents(mean d8) 

by iMPCE_EG dTemporaryMigra, sort: egen d9 = sum(wgt_combined)
format %20.0g d9
table iMPCE_EG dTemporaryMigra, contents(mean d9) 

by B4_c4iHHH_sex dTemporaryMigra, sort: egen d10 = sum(wgt_combined)
format %20.0g d10
table B4_c4iHHH_sex dTemporaryMigra, contents(mean d10) 

by iHHH_age dTemporaryMigra, sort: egen d11 = sum(wgt_combined)
format %20.0g d11
table iHHH_age dTemporaryMigra, contents(mean d11) 

by iHHH_marital dTemporaryMigra, sort: egen d12 = sum(wgt_combined)
format %20.0g d12
table iHHH_marital dTemporaryMigra, contents(mean d12) 

by iHHH_education dTemporaryMigra, sort: egen d13 = sum(wgt_combined)
format %20.0g d13
table iHHH_education dTemporaryMigra, contents(mean d13) 

by istate dTemporaryMigra, sort: egen d14 = sum(wgt_combined)
format %20.0g d14
table istate dTemporaryMigra, contents(mean d14) 



*****EG1*****
clear 
use "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta"
sort Key_hhold
save "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", replace 
clear 
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("EG1") firstrow
merge m:m Key_hhold using "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", gen (_mergeR1R2)
keep if _mergeR1R2==3

*summary statistics  
by dTemporaryMigra, sort: egen s1 = sum(wgt_combined)
format %20.0g s1
table dTemporaryMigra, contents(mean s1) 

by idrought40, sort: egen s2 = sum(wgt_combined)
format %20.0g s2
table idrought40, contents(mean s2)

by iflood40, sort: egen s3 = sum(wgt_combined)
format %20.0g s3
table iflood40, contents(mean s3) 

by iHH_size, sort: egen s4 = sum(wgt_combined)
format %20.0g s4
table iHH_size, contents(mean s4) 

by iHH_migratedout, sort: egen s5 = sum(wgt_combined)
format %20.0g s5
table iHH_migratedout, contents(mean s5) 

by iHH_religion, sort: egen s6 = sum(wgt_combined)
format %20.0g s6
table iHH_religion, contents(mean s6) 

by iHH_socialgroup, sort: egen s7 = sum(wgt_combined)
format %20.0g s7
table iHH_socialgroup, contents(mean s7) 

by iHH_land, sort: egen s8 = sum(wgt_combined)
format %20.0g s8
table iHH_land, contents(mean s8) 

by iHH_type, sort: egen s9 = sum(wgt_combined)
format %20.0g s9
table iHH_type, contents(mean s9) 

by B4_c4iHHH_sex, sort: egen s11 = sum(wgt_combined)
format %20.0g s11
table B4_c4iHHH_sex, contents(mean s11) 

by iHHH_age, sort: egen s12 = sum(wgt_combined)
format %20.0g s12
table iHHH_age, contents(mean s12) 

by iHHH_marital, sort: egen s13 = sum(wgt_combined)
format %20.0g s13
table iHHH_marital, contents(mean s13) 

by iHHH_education, sort: egen s14 = sum(wgt_combined)
format %20.0g s14
table iHHH_education, contents(mean s14) 

by istate, sort: egen s15 = sum(wgt_combined)
format %20.0g s15
table istate, contents(mean s15) 

*descriptive statistics 
by idrought40 dTemporaryMigra, sort: egen d1 = sum(wgt_combined)
format %20.0g d1
table idrought40 dTemporaryMigra, contents(mean d1)

by iflood40 dTemporaryMigra, sort: egen d2 = sum(wgt_combined)
format %20.0g d2
table iflood40 dTemporaryMigra, contents(mean d2) 

by iHH_size dTemporaryMigra, sort: egen d3 = sum(wgt_combined)
format %20.0g d3
table iHH_size dTemporaryMigra, contents(mean d3) 

by iHH_migratedout dTemporaryMigra, sort: egen d4 = sum(wgt_combined)
format %20.0g d4
table iHH_migratedout dTemporaryMigra, contents(mean d4) 

by iHH_religion dTemporaryMigra, sort: egen d5 = sum(wgt_combined)
format %20.0g d5
table iHH_religion dTemporaryMigra, contents(mean d5) 

by iHH_socialgroup dTemporaryMigra, sort: egen d6 = sum(wgt_combined)
format %20.0g d6
table iHH_socialgroup dTemporaryMigra, contents(mean d6) 

by iHH_land dTemporaryMigra, sort: egen d7 = sum(wgt_combined)
format %20.0g d7
table iHH_land dTemporaryMigra, contents(mean d7) 

by iHH_type dTemporaryMigra, sort: egen d8 = sum(wgt_combined)
format %20.0g d8
table iHH_type dTemporaryMigra, contents(mean d8) 

by B4_c4iHHH_sex dTemporaryMigra, sort: egen d10 = sum(wgt_combined)
format %20.0g d10
table B4_c4iHHH_sex dTemporaryMigra, contents(mean d10) 

by iHHH_age dTemporaryMigra, sort: egen d11 = sum(wgt_combined)
format %20.0g d11
table iHHH_age dTemporaryMigra, contents(mean d11) 

by iHHH_marital dTemporaryMigra, sort: egen d12 = sum(wgt_combined)
format %20.0g d12
table iHHH_marital dTemporaryMigra, contents(mean d12) 

by iHHH_education dTemporaryMigra, sort: egen d13 = sum(wgt_combined)
format %20.0g d13
table iHHH_education dTemporaryMigra, contents(mean d13) 

by istate dTemporaryMigra, sort: egen d14 = sum(wgt_combined)
format %20.0g d14
table istate dTemporaryMigra, contents(mean d14) 



*****EG2*****
clear 
use "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta"
sort Key_hhold
save "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", replace 
clear 
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("EG2") firstrow
merge m:m Key_hhold using "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", gen (_mergeR1R2)
keep if _mergeR1R2==3

*summary statistics  
by dTemporaryMigra, sort: egen s1 = sum(wgt_combined)
format %20.0g s1
table dTemporaryMigra, contents(mean s1) 

by idrought40, sort: egen s2 = sum(wgt_combined)
format %20.0g s2
table idrought40, contents(mean s2)

by iflood40, sort: egen s3 = sum(wgt_combined)
format %20.0g s3
table iflood40, contents(mean s3) 

by iHH_size, sort: egen s4 = sum(wgt_combined)
format %20.0g s4
table iHH_size, contents(mean s4) 

by iHH_migratedout, sort: egen s5 = sum(wgt_combined)
format %20.0g s5
table iHH_migratedout, contents(mean s5) 

by iHH_religion, sort: egen s6 = sum(wgt_combined)
format %20.0g s6
table iHH_religion, contents(mean s6) 

by iHH_socialgroup, sort: egen s7 = sum(wgt_combined)
format %20.0g s7
table iHH_socialgroup, contents(mean s7) 

by iHH_land, sort: egen s8 = sum(wgt_combined)
format %20.0g s8
table iHH_land, contents(mean s8) 

by iHH_type, sort: egen s9 = sum(wgt_combined)
format %20.0g s9
table iHH_type, contents(mean s9) 

by B4_c4iHHH_sex, sort: egen s11 = sum(wgt_combined)
format %20.0g s11
table B4_c4iHHH_sex, contents(mean s11) 

by iHHH_age, sort: egen s12 = sum(wgt_combined)
format %20.0g s12
table iHHH_age, contents(mean s12) 

by iHHH_marital, sort: egen s13 = sum(wgt_combined)
format %20.0g s13
table iHHH_marital, contents(mean s13) 

by iHHH_education, sort: egen s14 = sum(wgt_combined)
format %20.0g s14
table iHHH_education, contents(mean s14) 

by istate, sort: egen s15 = sum(wgt_combined)
format %20.0g s15
table istate, contents(mean s15) 

*descriptive statistics 
by idrought40 dTemporaryMigra, sort: egen d1 = sum(wgt_combined)
format %20.0g d1
table idrought40 dTemporaryMigra, contents(mean d1)

by iflood40 dTemporaryMigra, sort: egen d2 = sum(wgt_combined)
format %20.0g d2
table iflood40 dTemporaryMigra, contents(mean d2) 

by iHH_size dTemporaryMigra, sort: egen d3 = sum(wgt_combined)
format %20.0g d3
table iHH_size dTemporaryMigra, contents(mean d3) 

by iHH_migratedout dTemporaryMigra, sort: egen d4 = sum(wgt_combined)
format %20.0g d4
table iHH_migratedout dTemporaryMigra, contents(mean d4) 

by iHH_religion dTemporaryMigra, sort: egen d5 = sum(wgt_combined)
format %20.0g d5
table iHH_religion dTemporaryMigra, contents(mean d5) 

by iHH_socialgroup dTemporaryMigra, sort: egen d6 = sum(wgt_combined)
format %20.0g d6
table iHH_socialgroup dTemporaryMigra, contents(mean d6) 

by iHH_land dTemporaryMigra, sort: egen d7 = sum(wgt_combined)
format %20.0g d7
table iHH_land dTemporaryMigra, contents(mean d7) 

by iHH_type dTemporaryMigra, sort: egen d8 = sum(wgt_combined)
format %20.0g d8
table iHH_type dTemporaryMigra, contents(mean d8) 

by B4_c4iHHH_sex dTemporaryMigra, sort: egen d10 = sum(wgt_combined)
format %20.0g d10
table B4_c4iHHH_sex dTemporaryMigra, contents(mean d10) 

by iHHH_age dTemporaryMigra, sort: egen d11 = sum(wgt_combined)
format %20.0g d11
table iHHH_age dTemporaryMigra, contents(mean d11) 

by iHHH_marital dTemporaryMigra, sort: egen d12 = sum(wgt_combined)
format %20.0g d12
table iHHH_marital dTemporaryMigra, contents(mean d12) 

by iHHH_education dTemporaryMigra, sort: egen d13 = sum(wgt_combined)
format %20.0g d13
table iHHH_education dTemporaryMigra, contents(mean d13) 

by istate dTemporaryMigra, sort: egen d14 = sum(wgt_combined)
format %20.0g d14
table istate dTemporaryMigra, contents(mean d14) 

*****EG3*****
clear 
use "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta"
sort Key_hhold
save "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", replace 
clear 
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("EG3") firstrow
merge m:m Key_hhold using "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", gen (_mergeR1R2)
keep if _mergeR1R2==3

*summary statistics  
by dTemporaryMigra, sort: egen s1 = sum(wgt_combined)
format %20.0g s1
table dTemporaryMigra, contents(mean s1) 

by idrought40, sort: egen s2 = sum(wgt_combined)
format %20.0g s2
table idrought40, contents(mean s2)

by iflood40, sort: egen s3 = sum(wgt_combined)
format %20.0g s3
table iflood40, contents(mean s3) 

by iHH_size, sort: egen s4 = sum(wgt_combined)
format %20.0g s4
table iHH_size, contents(mean s4) 

by iHH_migratedout, sort: egen s5 = sum(wgt_combined)
format %20.0g s5
table iHH_migratedout, contents(mean s5) 

by iHH_religion, sort: egen s6 = sum(wgt_combined)
format %20.0g s6
table iHH_religion, contents(mean s6) 

by iHH_socialgroup, sort: egen s7 = sum(wgt_combined)
format %20.0g s7
table iHH_socialgroup, contents(mean s7) 

by iHH_land, sort: egen s8 = sum(wgt_combined)
format %20.0g s8
table iHH_land, contents(mean s8) 

by iHH_type, sort: egen s9 = sum(wgt_combined)
format %20.0g s9
table iHH_type, contents(mean s9) 

by B4_c4iHHH_sex, sort: egen s11 = sum(wgt_combined)
format %20.0g s11
table B4_c4iHHH_sex, contents(mean s11) 

by iHHH_age, sort: egen s12 = sum(wgt_combined)
format %20.0g s12
table iHHH_age, contents(mean s12) 

by iHHH_marital, sort: egen s13 = sum(wgt_combined)
format %20.0g s13
table iHHH_marital, contents(mean s13) 

by iHHH_education, sort: egen s14 = sum(wgt_combined)
format %20.0g s14
table iHHH_education, contents(mean s14) 

by istate, sort: egen s15 = sum(wgt_combined)
format %20.0g s15
table istate, contents(mean s15) 

*descriptive statistics 
by idrought40 dTemporaryMigra, sort: egen d1 = sum(wgt_combined)
format %20.0g d1
table idrought40 dTemporaryMigra, contents(mean d1)

by iflood40 dTemporaryMigra, sort: egen d2 = sum(wgt_combined)
format %20.0g d2
table iflood40 dTemporaryMigra, contents(mean d2) 

by iHH_size dTemporaryMigra, sort: egen d3 = sum(wgt_combined)
format %20.0g d3
table iHH_size dTemporaryMigra, contents(mean d3) 

by iHH_migratedout dTemporaryMigra, sort: egen d4 = sum(wgt_combined)
format %20.0g d4
table iHH_migratedout dTemporaryMigra, contents(mean d4) 

by iHH_religion dTemporaryMigra, sort: egen d5 = sum(wgt_combined)
format %20.0g d5
table iHH_religion dTemporaryMigra, contents(mean d5) 

by iHH_socialgroup dTemporaryMigra, sort: egen d6 = sum(wgt_combined)
format %20.0g d6
table iHH_socialgroup dTemporaryMigra, contents(mean d6) 

by iHH_land dTemporaryMigra, sort: egen d7 = sum(wgt_combined)
format %20.0g d7
table iHH_land dTemporaryMigra, contents(mean d7) 

by iHH_type dTemporaryMigra, sort: egen d8 = sum(wgt_combined)
format %20.0g d8
table iHH_type dTemporaryMigra, contents(mean d8) 

by B4_c4iHHH_sex dTemporaryMigra, sort: egen d10 = sum(wgt_combined)
format %20.0g d10
table B4_c4iHHH_sex dTemporaryMigra, contents(mean d10) 

by iHHH_age dTemporaryMigra, sort: egen d11 = sum(wgt_combined)
format %20.0g d11
table iHHH_age dTemporaryMigra, contents(mean d11) 

by iHHH_marital dTemporaryMigra, sort: egen d12 = sum(wgt_combined)
format %20.0g d12
table iHHH_marital dTemporaryMigra, contents(mean d12) 

by iHHH_education dTemporaryMigra, sort: egen d13 = sum(wgt_combined)
format %20.0g d13
table iHHH_education dTemporaryMigra, contents(mean d13) 

by istate dTemporaryMigra, sort: egen d14 = sum(wgt_combined)
format %20.0g d14
table istate dTemporaryMigra, contents(mean d14) 

*****SG1*****
clear 
use "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta"
sort Key_hhold
save "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", replace 
clear 
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("SG1") firstrow
merge m:m Key_hhold using "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", gen (_mergeR1R2)
keep if _mergeR1R2==3

*summary statistics  
by dTemporaryMigra, sort: egen s1 = sum(wgt_combined)
format %20.0g s1
table dTemporaryMigra, contents(mean s1) 

by idrought40, sort: egen s2 = sum(wgt_combined)
format %20.0g s2
table idrought40, contents(mean s2)

by iflood40, sort: egen s3 = sum(wgt_combined)
format %20.0g s3
table iflood40, contents(mean s3) 

by iHH_size, sort: egen s4 = sum(wgt_combined)
format %20.0g s4
table iHH_size, contents(mean s4) 

by iHH_migratedout, sort: egen s5 = sum(wgt_combined)
format %20.0g s5
table iHH_migratedout, contents(mean s5) 

by iHH_religion, sort: egen s6 = sum(wgt_combined)
format %20.0g s6
table iHH_religion, contents(mean s6) 

by iHH_land, sort: egen s8 = sum(wgt_combined)
format %20.0g s8
table iHH_land, contents(mean s8) 

by iHH_type, sort: egen s9 = sum(wgt_combined)
format %20.0g s9
table iHH_type, contents(mean s9) 

by iMPCE_EG, sort: egen s10 = sum(wgt_combined)
format %20.0g s10
table iMPCE_EG, contents(mean s10) 

by B4_c4iHHH_sex, sort: egen s11 = sum(wgt_combined)
format %20.0g s11
table B4_c4iHHH_sex, contents(mean s11) 

by iHHH_age, sort: egen s12 = sum(wgt_combined)
format %20.0g s12
table iHHH_age, contents(mean s12) 

by iHHH_marital, sort: egen s13 = sum(wgt_combined)
format %20.0g s13
table iHHH_marital, contents(mean s13) 

by iHHH_education, sort: egen s14 = sum(wgt_combined)
format %20.0g s14
table iHHH_education, contents(mean s14) 

by istate, sort: egen s15 = sum(wgt_combined)
format %20.0g s15
table istate, contents(mean s15) 

*descriptive statistics 
by idrought40 dTemporaryMigra, sort: egen d1 = sum(wgt_combined)
format %20.0g d1
table idrought40 dTemporaryMigra, contents(mean d1)

by iflood40 dTemporaryMigra, sort: egen d2 = sum(wgt_combined)
format %20.0g d2
table iflood40 dTemporaryMigra, contents(mean d2) 

by iHH_size dTemporaryMigra, sort: egen d3 = sum(wgt_combined)
format %20.0g d3
table iHH_size dTemporaryMigra, contents(mean d3) 

by iHH_migratedout dTemporaryMigra, sort: egen d4 = sum(wgt_combined)
format %20.0g d4
table iHH_migratedout dTemporaryMigra, contents(mean d4) 

by iHH_religion dTemporaryMigra, sort: egen d5 = sum(wgt_combined)
format %20.0g d5
table iHH_religion dTemporaryMigra, contents(mean d5) 

by iHH_land dTemporaryMigra, sort: egen d7 = sum(wgt_combined)
format %20.0g d7
table iHH_land dTemporaryMigra, contents(mean d7) 

by iHH_type dTemporaryMigra, sort: egen d8 = sum(wgt_combined)
format %20.0g d8
table iHH_type dTemporaryMigra, contents(mean d8) 

by iMPCE_EG dTemporaryMigra, sort: egen d9 = sum(wgt_combined)
format %20.0g d9
table iMPCE_EG dTemporaryMigra, contents(mean d9) 

by B4_c4iHHH_sex dTemporaryMigra, sort: egen d10 = sum(wgt_combined)
format %20.0g d10
table B4_c4iHHH_sex dTemporaryMigra, contents(mean d10) 

by iHHH_age dTemporaryMigra, sort: egen d11 = sum(wgt_combined)
format %20.0g d11
table iHHH_age dTemporaryMigra, contents(mean d11) 

by iHHH_marital dTemporaryMigra, sort: egen d12 = sum(wgt_combined)
format %20.0g d12
table iHHH_marital dTemporaryMigra, contents(mean d12) 

by iHHH_education dTemporaryMigra, sort: egen d13 = sum(wgt_combined)
format %20.0g d13
table iHHH_education dTemporaryMigra, contents(mean d13) 

by istate dTemporaryMigra, sort: egen d14 = sum(wgt_combined)
format %20.0g d14
table istate dTemporaryMigra, contents(mean d14) 



*****SG2*****
clear 
use "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta"
sort Key_hhold
save "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", replace 
clear 
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("SG2") firstrow
merge m:m Key_hhold using "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", gen (_mergeR1R2)
keep if _mergeR1R2==3

*summary statistics  
by dTemporaryMigra, sort: egen s1 = sum(wgt_combined)
format %20.0g s1
table dTemporaryMigra, contents(mean s1) 

by idrought40, sort: egen s2 = sum(wgt_combined)
format %20.0g s2
table idrought40, contents(mean s2)

by iflood40, sort: egen s3 = sum(wgt_combined)
format %20.0g s3
table iflood40, contents(mean s3) 

by iHH_size, sort: egen s4 = sum(wgt_combined)
format %20.0g s4
table iHH_size, contents(mean s4) 

by iHH_migratedout, sort: egen s5 = sum(wgt_combined)
format %20.0g s5
table iHH_migratedout, contents(mean s5) 

by iHH_religion, sort: egen s6 = sum(wgt_combined)
format %20.0g s6
table iHH_religion, contents(mean s6) 

by iHH_land, sort: egen s8 = sum(wgt_combined)
format %20.0g s8
table iHH_land, contents(mean s8) 

by iHH_type, sort: egen s9 = sum(wgt_combined)
format %20.0g s9
table iHH_type, contents(mean s9) 

by iMPCE_EG, sort: egen s10 = sum(wgt_combined)
format %20.0g s10
table iMPCE_EG, contents(mean s10) 

by B4_c4iHHH_sex, sort: egen s11 = sum(wgt_combined)
format %20.0g s11
table B4_c4iHHH_sex, contents(mean s11) 

by iHHH_age, sort: egen s12 = sum(wgt_combined)
format %20.0g s12
table iHHH_age, contents(mean s12) 

by iHHH_marital, sort: egen s13 = sum(wgt_combined)
format %20.0g s13
table iHHH_marital, contents(mean s13) 

by iHHH_education, sort: egen s14 = sum(wgt_combined)
format %20.0g s14
table iHHH_education, contents(mean s14) 

by istate, sort: egen s15 = sum(wgt_combined)
format %20.0g s15
table istate, contents(mean s15) 

*descriptive statistics 
by idrought40 dTemporaryMigra, sort: egen d1 = sum(wgt_combined)
format %20.0g d1
table idrought40 dTemporaryMigra, contents(mean d1)

by iflood40 dTemporaryMigra, sort: egen d2 = sum(wgt_combined)
format %20.0g d2
table iflood40 dTemporaryMigra, contents(mean d2) 

by iHH_size dTemporaryMigra, sort: egen d3 = sum(wgt_combined)
format %20.0g d3
table iHH_size dTemporaryMigra, contents(mean d3) 

by iHH_migratedout dTemporaryMigra, sort: egen d4 = sum(wgt_combined)
format %20.0g d4
table iHH_migratedout dTemporaryMigra, contents(mean d4) 

by iHH_religion dTemporaryMigra, sort: egen d5 = sum(wgt_combined)
format %20.0g d5
table iHH_religion dTemporaryMigra, contents(mean d5) 

by iHH_land dTemporaryMigra, sort: egen d7 = sum(wgt_combined)
format %20.0g d7
table iHH_land dTemporaryMigra, contents(mean d7) 

by iHH_type dTemporaryMigra, sort: egen d8 = sum(wgt_combined)
format %20.0g d8
table iHH_type dTemporaryMigra, contents(mean d8) 

by iMPCE_EG dTemporaryMigra, sort: egen d9 = sum(wgt_combined)
format %20.0g d9
table iMPCE_EG dTemporaryMigra, contents(mean d9) 

by B4_c4iHHH_sex dTemporaryMigra, sort: egen d10 = sum(wgt_combined)
format %20.0g d10
table B4_c4iHHH_sex dTemporaryMigra, contents(mean d10) 

by iHHH_age dTemporaryMigra, sort: egen d11 = sum(wgt_combined)
format %20.0g d11
table iHHH_age dTemporaryMigra, contents(mean d11) 

by iHHH_marital dTemporaryMigra, sort: egen d12 = sum(wgt_combined)
format %20.0g d12
table iHHH_marital dTemporaryMigra, contents(mean d12) 

by iHHH_education dTemporaryMigra, sort: egen d13 = sum(wgt_combined)
format %20.0g d13
table iHHH_education dTemporaryMigra, contents(mean d13) 

by istate dTemporaryMigra, sort: egen d14 = sum(wgt_combined)
format %20.0g d14
table istate dTemporaryMigra, contents(mean d14) 


*****SG3*****
clear 
use "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta"
sort Key_hhold
save "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", replace 
clear 
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("SG3") firstrow
merge m:m Key_hhold using "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", gen (_mergeR1R2)
keep if _mergeR1R2==3

*summary statistics  
by dTemporaryMigra, sort: egen s1 = sum(wgt_combined)
format %20.0g s1
table dTemporaryMigra, contents(mean s1) 

by idrought40, sort: egen s2 = sum(wgt_combined)
format %20.0g s2
table idrought40, contents(mean s2)

by iflood40, sort: egen s3 = sum(wgt_combined)
format %20.0g s3
table iflood40, contents(mean s3) 

by iHH_size, sort: egen s4 = sum(wgt_combined)
format %20.0g s4
table iHH_size, contents(mean s4) 

by iHH_migratedout, sort: egen s5 = sum(wgt_combined)
format %20.0g s5
table iHH_migratedout, contents(mean s5) 

by iHH_religion, sort: egen s6 = sum(wgt_combined)
format %20.0g s6
table iHH_religion, contents(mean s6) 

by iHH_land, sort: egen s8 = sum(wgt_combined)
format %20.0g s8
table iHH_land, contents(mean s8) 

by iHH_type, sort: egen s9 = sum(wgt_combined)
format %20.0g s9
table iHH_type, contents(mean s9) 

by iMPCE_EG, sort: egen s10 = sum(wgt_combined)
format %20.0g s10
table iMPCE_EG, contents(mean s10) 

by B4_c4iHHH_sex, sort: egen s11 = sum(wgt_combined)
format %20.0g s11
table B4_c4iHHH_sex, contents(mean s11) 

by iHHH_age, sort: egen s12 = sum(wgt_combined)
format %20.0g s12
table iHHH_age, contents(mean s12) 

by iHHH_marital, sort: egen s13 = sum(wgt_combined)
format %20.0g s13
table iHHH_marital, contents(mean s13) 

by iHHH_education, sort: egen s14 = sum(wgt_combined)
format %20.0g s14
table iHHH_education, contents(mean s14) 

by istate, sort: egen s15 = sum(wgt_combined)
format %20.0g s15
table istate, contents(mean s15) 

*descriptive statistics 
by idrought40 dTemporaryMigra, sort: egen d1 = sum(wgt_combined)
format %20.0g d1
table idrought40 dTemporaryMigra, contents(mean d1)

by iflood40 dTemporaryMigra, sort: egen d2 = sum(wgt_combined)
format %20.0g d2
table iflood40 dTemporaryMigra, contents(mean d2) 

by iHH_size dTemporaryMigra, sort: egen d3 = sum(wgt_combined)
format %20.0g d3
table iHH_size dTemporaryMigra, contents(mean d3) 

by iHH_migratedout dTemporaryMigra, sort: egen d4 = sum(wgt_combined)
format %20.0g d4
table iHH_migratedout dTemporaryMigra, contents(mean d4) 

by iHH_religion dTemporaryMigra, sort: egen d5 = sum(wgt_combined)
format %20.0g d5
table iHH_religion dTemporaryMigra, contents(mean d5) 

by iHH_land dTemporaryMigra, sort: egen d7 = sum(wgt_combined)
format %20.0g d7
table iHH_land dTemporaryMigra, contents(mean d7) 

by iHH_type dTemporaryMigra, sort: egen d8 = sum(wgt_combined)
format %20.0g d8
table iHH_type dTemporaryMigra, contents(mean d8) 

by iMPCE_EG dTemporaryMigra, sort: egen d9 = sum(wgt_combined)
format %20.0g d9
table iMPCE_EG dTemporaryMigra, contents(mean d9) 

by B4_c4iHHH_sex dTemporaryMigra, sort: egen d10 = sum(wgt_combined)
format %20.0g d10
table B4_c4iHHH_sex dTemporaryMigra, contents(mean d10) 

by iHHH_age dTemporaryMigra, sort: egen d11 = sum(wgt_combined)
format %20.0g d11
table iHHH_age dTemporaryMigra, contents(mean d11) 

by iHHH_marital dTemporaryMigra, sort: egen d12 = sum(wgt_combined)
format %20.0g d12
table iHHH_marital dTemporaryMigra, contents(mean d12) 

by iHHH_education dTemporaryMigra, sort: egen d13 = sum(wgt_combined)
format %20.0g d13
table iHHH_education dTemporaryMigra, contents(mean d13) 

by istate dTemporaryMigra, sort: egen d14 = sum(wgt_combined)
format %20.0g d14
table istate dTemporaryMigra, contents(mean d14) 



*****SG4*****
clear 
use "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta"
sort Key_hhold
save "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", replace 
clear 
import excel "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\Dataset_5.xlsx", sheet("SG4") firstrow
merge m:m Key_hhold using "C:\Users\badsh\OneDrive\Desktop\objective1\Block-3-household-characteristics-ecords.dta", gen (_mergeR1R2)
keep if _mergeR1R2==3

*summary statistics  
by dTemporaryMigra, sort: egen s1 = sum(wgt_combined)
format %20.0g s1
table dTemporaryMigra, contents(mean s1) 

by idrought40, sort: egen s2 = sum(wgt_combined)
format %20.0g s2
table idrought40, contents(mean s2)

by iflood40, sort: egen s3 = sum(wgt_combined)
format %20.0g s3
table iflood40, contents(mean s3) 

by iHH_size, sort: egen s4 = sum(wgt_combined)
format %20.0g s4
table iHH_size, contents(mean s4) 

by iHH_migratedout, sort: egen s5 = sum(wgt_combined)
format %20.0g s5
table iHH_migratedout, contents(mean s5) 

by iHH_religion, sort: egen s6 = sum(wgt_combined)
format %20.0g s6
table iHH_religion, contents(mean s6) 

by iHH_land, sort: egen s8 = sum(wgt_combined)
format %20.0g s8
table iHH_land, contents(mean s8) 

by iHH_type, sort: egen s9 = sum(wgt_combined)
format %20.0g s9
table iHH_type, contents(mean s9) 

by iMPCE_EG, sort: egen s10 = sum(wgt_combined)
format %20.0g s10
table iMPCE_EG, contents(mean s10) 

by B4_c4iHHH_sex, sort: egen s11 = sum(wgt_combined)
format %20.0g s11
table B4_c4iHHH_sex, contents(mean s11) 

by iHHH_age, sort: egen s12 = sum(wgt_combined)
format %20.0g s12
table iHHH_age, contents(mean s12) 

by iHHH_marital, sort: egen s13 = sum(wgt_combined)
format %20.0g s13
table iHHH_marital, contents(mean s13) 

by iHHH_education, sort: egen s14 = sum(wgt_combined)
format %20.0g s14
table iHHH_education, contents(mean s14) 

by istate, sort: egen s15 = sum(wgt_combined)
format %20.0g s15
table istate, contents(mean s15) 

*descriptive statistics 
by idrought40 dTemporaryMigra, sort: egen d1 = sum(wgt_combined)
format %20.0g d1
table idrought40 dTemporaryMigra, contents(mean d1)

by iflood40 dTemporaryMigra, sort: egen d2 = sum(wgt_combined)
format %20.0g d2
table iflood40 dTemporaryMigra, contents(mean d2) 

by iHH_size dTemporaryMigra, sort: egen d3 = sum(wgt_combined)
format %20.0g d3
table iHH_size dTemporaryMigra, contents(mean d3) 

by iHH_migratedout dTemporaryMigra, sort: egen d4 = sum(wgt_combined)
format %20.0g d4
table iHH_migratedout dTemporaryMigra, contents(mean d4) 

by iHH_religion dTemporaryMigra, sort: egen d5 = sum(wgt_combined)
format %20.0g d5
table iHH_religion dTemporaryMigra, contents(mean d5) 

by iHH_land dTemporaryMigra, sort: egen d7 = sum(wgt_combined)
format %20.0g d7
table iHH_land dTemporaryMigra, contents(mean d7) 

by iHH_type dTemporaryMigra, sort: egen d8 = sum(wgt_combined)
format %20.0g d8
table iHH_type dTemporaryMigra, contents(mean d8) 

by iMPCE_EG dTemporaryMigra, sort: egen d9 = sum(wgt_combined)
format %20.0g d9
table iMPCE_EG dTemporaryMigra, contents(mean d9) 

by B4_c4iHHH_sex dTemporaryMigra, sort: egen d10 = sum(wgt_combined)
format %20.0g d10
table B4_c4iHHH_sex dTemporaryMigra, contents(mean d10) 

by iHHH_age dTemporaryMigra, sort: egen d11 = sum(wgt_combined)
format %20.0g d11
table iHHH_age dTemporaryMigra, contents(mean d11) 

by iHHH_marital dTemporaryMigra, sort: egen d12 = sum(wgt_combined)
format %20.0g d12
table iHHH_marital dTemporaryMigra, contents(mean d12) 

by iHHH_education dTemporaryMigra, sort: egen d13 = sum(wgt_combined)
format %20.0g d13
table iHHH_education dTemporaryMigra, contents(mean d13) 

by istate dTemporaryMigra, sort: egen d14 = sum(wgt_combined)
format %20.0g d14
table istate dTemporaryMigra, contents(mean d14) 

* proportion of internal and internation migrants 
clear
use "C:\Users\badsh\OneDrive\Desktop\objective1\NSSO_2007-08\Block-6-members-migration-records.dta" 
destring Sector, replace 
tab Sector
keep if Sector == 1
destring B6_c3, replace 
tab B6_c3
keep if B6_c3 == 1
destring B6_c5, replace 
tab B6_c5

by B6_c5, sort: egen t = sum(wgt_combined)
format %20.0g t
table B6_c5, contents(mean t) 

*stata codes in dofile to recreate the analysis in our published paper Sarkar, B., Dutta, S. and Singh, P.K., 2022. 
//Drought and temporary migration in rural India: A comparative study across different socio-economic groups 
//with a cross-sectional nationally representative dataset. Plos one, 17(10), p.e0275449. https://doi.org/10.1371/journal.pone.0275449

clear 
*step1: prepare dataset at household level data1

*merge HH and HHH data and ptoduce data1
use "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\nsso64demo"
tab B4_c3, missing 
tab1 B4_c4 B4_c5 B4_c6 B4_c7
keep key_hhold B4_c3 B4_c4 B4_c5 B4_c6 B4_c7
keep if B4_c3 == 1
sort key_hhold
save "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\nsso64demo1", replace 
clear

use "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\nsso64hh"
sort key_hhold
merge 1:1 key_hhold using "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\nsso64demo1", gen (_merge1)
save "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\data1", replace
clear 

*merge migration data with data1
use "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\nsso64migra"
tab B6_c3, missing 
keep if B6_c3 == 1
duplicates report key_hhold
duplicates list key_hhold
duplicates drop key_hhold, force 
keep key_hhold B6_c3
sort key_hhold
save "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\nsso64migra1"
clear

use "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\data1"
sort key_hhold
merge 1:1 key_hhold using "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\nsso64migra1", gen (_merge2)
tab B6_c3, missing 
recode B6_c3 (1=1) (.=0), gen (MIGRA)
tab MIGRA, missing 
save "C:\Users\badsh\OneDrive\Desktop\SRC_Reviews\codes\data1", replace
clear 

*merge drought/flood with data1 


