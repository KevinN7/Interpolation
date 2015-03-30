P = saisi_points();
[~,N] = size(P);

res = subdivise(P,3,10);
hold on;
plot([P(1,1) res(1,:) P(1,end)],[P(2,1) res(2,:) P(2,end)]);

pause;
close all;