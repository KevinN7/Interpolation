prof = 10;

P = saisi_points();
Bezier = bezier_sub(P,prof);

hold on;

plot(Bezier(1,:),Bezier(2,:),'.');

