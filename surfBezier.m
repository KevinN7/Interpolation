function P = surfBezier(Pts,u,v)

[~,m] = size(Pts);
h=zeros(3,m);
for i=1:m
    h(i) = casteljau3d(Pts(:,i),u);
end;

P=casteljau3d(h,v);