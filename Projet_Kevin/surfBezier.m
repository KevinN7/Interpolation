function P = surfBezier(Pts,u,v)

[~,m,~] = size(Pts);
h=zeros(3,m);
for i=1:m
    p_temp(:,1:3) = Pts(:,i,1:3);
    h(1:3,i) = casteljau3d(p_temp',u);
end;

P(1:3)=casteljau3d(h(1:3,:),v);