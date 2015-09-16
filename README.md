DatasetConversions
==================
CED2AR can automatically create DDI2.5 codebooks from SPSS datasets.  This project provides tools to convert other datssets into SPSS datasets


# SAS to SPSS

#### Best way to convert SAS dataset into SPSS is follow a two step process.
##### STEP I: Convert SAS dataset into SAS transport dataset using this SAS script
	
	libname sasdata 'location of the dataset excluding the dataset name.  Ex. c:\data\sasdatasets';
	libname sasspss xport 'Fully qualified path and file name of the transport file. Ex. c:\data\sastransport\sasdataset.xpt';
	proc copy in=sasdata out=sasspss; 
		select name of the sas dataset excluding sas7bdat extension Ex. sasdataset;
	run;
	
##### STEP II: Convert SAS transport dataset into SPSS using this SPSS script 
	get sas data = 'Fully qualified path and file name of the transport file. Ex. c:\data\sastransport\sasdataset.xpt'.
	save outfile = 'Fully qualified path and file name of the SPSS file. Ex. c:\data\spssdatasets\sasdataset.sav'.
	execute .

#### 


#### Direct conversion to SAS to SPSS
This is a one step process to convert SAS to SPSS. With this type of conversion, sometimes CED2AR is unable to process variable level summary statistics. 
There option to ignore variable level summary statistics in CED2AR upload menu.


	LIBNAME SDF "location of the dataset excluding the dataset name.  Ex. c:\data\sasdatasets";
	filename exprt 'Fully qualified path and file name of the SPSS file. Ex. c:\data\spaadata\spssdataset.sav';

	proc surveyselect  DATA=SDF.sasdataSetNameExcludingExtension
		method=srs n=300 out=sasdataSetNameExcludingExtension;
	run;

	PROC EXPORT DATA=sasdataSetNameExcludingExtension
        OUTFILE=exprt
        DBMS=SPSS REPLACE;
	RUN;




 





