function P = lagrangeCurbAna(ptsCtrl,t,u)

[~,n] = size(ptsCtrl);

res = zeros(1,3);
for i=1:n
     pt(1:3) = ptsCtrl(1:3,i);
     res(:) = res(:) + pt(:)*lagrange(i,n,t,u); 
end;

P = res;