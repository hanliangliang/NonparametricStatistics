#Recall then find no impression
d=read.table("c:/data/blead1.txt");
rd=apply(d,1,rank);
r=apply(rd,1,sum)