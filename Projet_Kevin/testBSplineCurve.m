P = saisi_points();
[~,N] = size(P);

hold on;
m=3;
t=1:(N+m+1);

val=[];
for x=0:0.1:(N+m)
    val = [val bSplineCurbe(P,m,t,x)];
    plot(val(1,end),val(2,end));
end;


%plot(val(1,:)',val(2,:)');

pause;
close all;