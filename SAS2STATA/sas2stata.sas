%let dataset=MYDATA;
%let here=".";

proc export data=HERE.&dataset. outfile="&dataset..dta" dbms=dta replace;
run;
