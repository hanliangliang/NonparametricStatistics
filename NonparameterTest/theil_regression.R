d =read.table("c:/data/CPIGINI.txt"),header=T);
x=d[,1];y=d[,2];n=nrow(d);
s =NULL;
for(i in 1:(n-1))for(j in (i+1):n)
	s=c(s,(y[j]-y[i])/x[j]-x[i]))
b=median(s); a=median(y-b*x); e = y-a-b*x;coef=c(a,b)
