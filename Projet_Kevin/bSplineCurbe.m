function val = bSplineCurbe(P,m,t,x)

[dim,nbrPt]=size(P);
res=zeros(dim,1);

for i=1:nbrPt
    res = res + P(:,i)*splineBase(i,m,t,x);
end;

val = res;
