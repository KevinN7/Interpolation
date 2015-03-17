function res = subSpline(Pts,deg,nbr)


[n,m]=size(Pts);
for i =1:m
    K = subdivise(Pts(:,m),degres,nbr)
    h(i,:,1:3) = K(1:3,:);
end;

[~,l] = size(K);

for i=1:l
    subdivise(h(i,:),degres,nbr)
end;

res = 