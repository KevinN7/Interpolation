function val = bezier_ana(P,pt)

[~,n]=size(P);
n=n-1;
res = 0;
for k=0:n
    res = res + bernstein(n,k,pt) * P(:,k+1);
end;

val = res;