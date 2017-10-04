DatasetConversions
==================
CED2AR can automatically create DDI2.5 codebooks from SPSS and STATA (Versions 8 thru 13) datasets.  Codebooks are created by just uploading supported datasets into CED2AR.

CED2AR cannot convert SAS datasets. We suggest to convert SAS to SPSS for uploading (as of 2017, there are issues with the *converted* STATA datasets, though native STATA datasets work just fine). However, for future reference, SAS to STATA conversions are also available.


## SAS to SPSS (with access to both SAS and SPSS)

Recommended way to convert SAS dataset into SPSS is ...  

### STEP I: Convert SAS dataset into SAS transport dataset using  SAS script
[SAS2TRANSPORT/sas2transportdataset.sas](SAS2TRANSPORT/sas2transportdataset.sas)
	
### STEP II: Convert SAS transport dataset into SPSS using  SPSS script  sastransport2spss.sbs
[SAS2SPSS/sastransport2spss.sbs](SAS2SPSS/sastransport2spss.sbs)


### Direct conversion from SAS to SPSS
This is a one step process to convert SAS to SPSS using a SAS script. With this type of conversion, CED2AR is unable to create variable level summary statistics. This option works if variable level summary statistics are not important. 

[SAS2SPSS/convert2spss.sas](SAS2SPSS/convert2spss.sas)

## Direct conversion from SAS to STATA
The direct conversion by SAS creates a valid STATA file that is not successfully read by CED2AR. At this time, the reason is unknown. Post-processing using STATA solves the problem. 

### STEP I: Convert SAS dataset into STATA using  SAS script
[SAS2STATA/sas2stata.sas](SAS2STATA/sas2stata.sas)

### STEP II: Post-process STATA in STATA
With the following post-processing code, the generated Stata file is readable by CED2AR:

```
use MYDATA
saveold MYDATA, version(12) replace 
```





