P = saisi_points();
[~,N] = size(P);

hold on;
m=3;
t=0:(N+m);
t = t/(N+m);

val=[];
for x=0:0.005:1
    val = deBoor(P,t,m,x)
    plot(val(1),val(2));
end;


pause;
close all;