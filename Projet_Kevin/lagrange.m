function val = lagrange(n,j,x,pt)

res = 1;
for i=1:N
    if(i~=j)
       res = res* ((pt-x(i))/(x(j)-x(i))); 
    end;
end; 

val = res;