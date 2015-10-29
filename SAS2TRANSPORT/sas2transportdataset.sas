	
	libname sasdata 'location of the dataset excluding the dataset name.  Ex. c:\data\sasdatasets';
	libname sasspss xport 'Fully qualified path and file name of the transport file. Ex. c:\data\sastransport\sasdataset.xpt';
	proc copy in=sasdata out=sasspss; 
		select name of the sas dataset excluding sas7bdat extension Ex. sasdataset;
	run;
