function P = lagrangeSurfAna(ptsCtrl,t1,t2,u,v)

[n,m,~] = size(ptsCtrl);


res = zeros(1,3);
for i=1:n
    for j=1:m
        pt(1:3) = ptsCtrl(i,j,1:3);
        res = res + pt*lagrange(i,n,t1,u)*lagrange(j,m,t2,v); 
    end;
end; 

P = res;