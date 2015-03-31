exemple = zeros(5,5,3);
exemple(1,1,:) = [-1;1;0];
exemple(2,1,:) = [0;1;0];
exemple(3,1,:) = [1;1;0];
exemple(4,1,:) = [1;1;0];
exemple(5,1,:) = [1;1;0];

exemple(1,2,:) = [-1;0;0];
exemple(2,2,:) = [0;0;1];
exemple(3,2,:) = [1;0;0];
exemple(4,2,:) = [1;0;0];
exemple(5,2,:) = [1;0;0];

exemple(1,3,:) = [-1;-1;0];
exemple(2,3,:) = [0;-2;-1];
exemple(3,3,:) = [1;-1;0];
exemple(4,3,:) = [0;-2;-1];
exemple(5,3,:) = [1;-1;0];


exemple(1,4,:) = [-2;-1;0];
exemple(2,4,:) = [0;-3;-1];
exemple(3,4,:) = [1;-1;0];
exemple(4,4,:) = [0;-6;-1];
exemple(5,4,:) = [2;-1;0];


exemple(1,5,:) = [-3;-1;0];
exemple(2,5,:) = [1;-2;-1];
exemple(3,5,:) = [6;-1;0];
exemple(4,5,:) = [0;-2;-1];
exemple(5,5,:) = [0;-1;2];

exemple = 5*randn(30,30,3);

%Spline

m=2;
[N1,N2,~] = size(exemple);
t1=0:(N1+m);
t2=0:(N2+m);
t1=t1/(N1+m);
t2=t2/(N2+m);

figure;
hold on;
for u=0:0.01:1
    for v=0:01:1
        P = bSplineSurfDeBoor(exemple,deg,t1,t2,u,v)
        plot3(P(1),P(2),P(3),'+');
    end;
end;

pause;
close all;