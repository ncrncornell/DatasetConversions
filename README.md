DatasetConversions
==================
CED2AR can automatically create DDI2.5 codebooks from SPSS and STATA (Versions 8 thru 13) datasets.  Codebooks are created by just uploading supported datasets into CED2AR.
This project provides tools to convert SAS datasets into STATA and SPSS datasets.  (CED2AR recommends to convert your SAS data set into STATA dataset)

# SAS to STATA

# SAS to SPSS

#### Best way to convert SAS dataset into SPSS is two step process listed below.  

##### STEP I: Convert SAS dataset into SAS transport dataset using  SAS script
https://github.com/ncrncornell/DatasetConversions/blob/master/SAS2SPSS/sas2transportdataset.sas
	
##### STEP II: Convert SAS transport dataset into SPSS using  SPSS script  sastransport2spss.sbs
https://github.com/ncrncornell/DatasetConversions/blob/master/SAS2SPSS/sastransport2spss.sbs
#### 


#### Direct conversion from SAS to SPSS
This is a one step process to convert SAS to SPSS using sas script in convert2spss.sas. With this type of conversion, CED2AR program is unable to process variable level summary statistics.
This option works if variable level summary statistics are not important.  You should use option to ignore variable level summary statistics when uploading the dataset using CED2AR upload menu.
https://github.com/ncrncornell/DatasetConversions/blob/master/SAS2SPSS/convert2spss.sas

 





