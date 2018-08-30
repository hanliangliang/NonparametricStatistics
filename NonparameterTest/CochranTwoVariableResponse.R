x=read.table("c:/data/candid.txt");
n=apply(x,2,sum);
N=sum(x);
l=apply(x,1,sum);
k=dim(x)[2];
q=k*(k-1)*sum((n-mean(n))^2)/(k*N-sum(l^2))
pchisq(q,k-1,low=F)
