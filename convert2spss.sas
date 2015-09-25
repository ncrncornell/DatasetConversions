	LIBNAME SDF "location of the dataset excluding the dataset name.  Ex. c:\data\sasdatasets";
	filename exprt 'Fully qualified path and file name of the SPSS file. Ex. c:\data\spaadata\spssdataset.sav';

	proc surveyselect  DATA=SDF.sasdataSetNameExcludingExtension
		method=srs n=300 out=sasdataSetNameExcludingExtension;
	run;

	PROC EXPORT DATA=sasdataSetNameExcludingExtension
        OUTFILE=exprt
        DBMS=SPSS REPLACE;
	RUN;
