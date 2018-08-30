d =read.table("c:/data/airp.txt");
R=apply(d,2,sum)
m=nrow(d);n=ncol(d);S=sum((R-m*(n+1)/2));
W=12*S/m^2/(n^3-n)
pchisq(m*(n-1)*W,n-1,low=F)

