function P = lagrangeSurfNeville(ptsCtrl,t1,t2,u,v)

[n,m,~] = size(PtsCtrl);

for i=1:n
	pts(:,1:3) = ptsCtrl(i,:,1:3);
	h(1:3,i) = neville(pts',t1,u);
end;

P = neville(h,t2,v);