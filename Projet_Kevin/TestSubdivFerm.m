close all;

P = saisi_points();
[~,N] = size(P);

res = subdivFerme(P,3,10);
hold on;
plot(res(1,:),res(2,:));

pause;
close all;