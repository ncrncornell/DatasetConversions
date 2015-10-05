DatasetConversions
==================
CED2AR can automatically create DDI2.5 codebooks from SPSS and STATA (Versions 8 thru 13) datasets.  Codebooks are created by just uploading supported datasets into CED2AR.
This project provides tools to convert SAS datasets into STATA and SPSS datasets.  (CED2AR recommends to convert your SAS data set into STATA dataset)

# SAS to STATA

# SAS to SPSS

#### Best way to convert SAS dataset into SPSS is two step process listed below.  
##### STEP I: Convert SAS dataset into SAS transport dataset using  SAS script in sas2transportdataset.sas
	
	libname sasdata 'location of the dataset excluding the dataset name.  Ex. c:\data\sasdatasets';
	libname sasspss xport 'Fully qualified path and file name of the transport file. Ex. c:\data\sastransport\sasdataset.xpt';
	proc copy in=sasdata out=sasspss; 
		select name of the sas dataset excluding sas7bdat extension Ex. sasdataset;
	run;
	
##### STEP II: Convert SAS transport dataset into SPSS using  SPSS script  sastransport2spss.sbs
	get sas data = 'Fully qualified path and file name of the transport file. Ex. c:\data\sastransport\sasdataset.xpt'.
	save outfile = 'Fully qualified path and file name of the SPSS file. Ex. c:\data\spssdatasets\sasdataset.sav'.
	execute .

#### 


#### Direct conversion from SAS to SPSS
This is a one step process to convert SAS to SPSS using sas script in convert2spss.sas. With this type of conversion, CED2AR program is unable to process variable level summary statistics.
This option works if variable level summary statistics are not important.  You should use option to ignore variable level summary statistics when uploading the dataset using CED2AR upload menu.


	LIBNAME SDF "location of the dataset excluding the dataset name.  Ex. c:\data\sasdatasets";
	filename exprt 'Fully qualified path and file name of the SPSS file. Ex. c:\data\spaadata\spssdataset.sav';

	proc surveyselect  DATA=SDF.sasdataSetNameExcludingExtension
		method=srs n=300 out=sasdataSetNameExcludingExtension;
	run;

	PROC EXPORT DATA=sasdataSetNameExcludingExtension
        OUTFILE=exprt
        DBMS=SPSS REPLACE;
	RUN;




 





