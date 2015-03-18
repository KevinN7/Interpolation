function val = lagrange(j,n,x,pt)

res = 1;
for i=1:n
    if(i~=j)
       res = res* ((pt-x(i))/(x(j)-x(i))); 
    end;
end; 

val = res;