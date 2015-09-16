DatasetConversions
==================
CED2AR can automatically create DDI2.5 codebooks from SPSS datasets.  This project provides tools to convert other datssets into SPSS datasets


# SAS to SPSS

#### Best way to convert SAS dataset into SPSS is follow a two step process.
##### Convert SAS dataset into sas transport format using this script
	
	libname sasdata 'location of the dataset excluding the dataset name.  Ex. c:\data\sasdatasets';
	libname sasspss xport 'Fully qualified path and file name of the transport file. Ex. c:\data\sastransport\sasdataset.xpt';
	proc copy in=sasdata out=sasspss; 
		select name of the sas dataset excluding sas7bdat extension Ex. sasdataset;
	run;

 





