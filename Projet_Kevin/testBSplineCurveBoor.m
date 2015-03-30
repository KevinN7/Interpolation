P = saisi_points();
[~,N] = size(P);

hold on;
m=3;
t=1:(N+m+1);

val=[];
for x=0:0.1:(N)%+m)
    val = [val deBoor(P,t,m,x)];
    plot(val(1,end),val(2,end));
end;


pause;
close all;