function val = deBoor(ctrlPoints,t,degree,x)

ind=find(t-x<=0);
[i,j]=size(ind);
if(j~=0)
    h=ind(end);
    val = boorP(degree-1,h,degree,x,t,ctrlPoints);
else
    h=t(1);
    val=[0;0];
end;

%val = boorP(degree-1,h,degree,x,t,ctrlPoints);