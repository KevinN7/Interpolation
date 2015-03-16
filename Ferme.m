P = saisi_points();
[~,N] = size(P);

P(:,N+1) = P(:,1);
N = N+1;

Z = -floor(N/2):1:floor(N/2);

res = subdivise(P,10);
hold on;
plot([P(1,1) res(1,:) P(1,end)],[P(2,1) res(2,:) P(2,end)]);

pause;
close all;