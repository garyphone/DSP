function [x,n]=stepseq(n0,ns,nf)
n=[ns:nf]; x=[(n-n0)>=0];