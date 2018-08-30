#Jonckheere-Terpstra
d= read.table("c:/data/wtloss.txt")
U=matrix(0,3,3);k =max(d[,2]);

for(i in 1:(k-1))
	for(j in (i+1):k)
	U[i,j]=sum(outer(d[d[,2]==i,1],d[d[,2]==j,1],"-")<0)
	+sum(outer(d[d[,2]==i,1],d[d[,2]==j,1],"-")==0)/2
J=sum(U);ni=NULL;

for(i in 1:k)
	ni=c(ni,sum(d[,2]==i));

N=sum(ni)
Z=(J-(N^2-sum(ni^2))/4)/sqrt((N^2*(2*N+3)-sum(ni^2*(2*ni+3)))/72)





