exemple = zeros(3,3,3);
exemple(1,1,:) = [-1;1;0];
exemple(2,1,:) = [0;1;0];
exemple(3,1,:) = [1;1;0];
exemple(1,2,:) = [-1;0;0];
exemple(2,2,:) = [0;0;1];
exemple(3,2,:) = [1;0;0];
exemple(1,3,:) = [-1;-1;0];
exemple(2,3,:) = [0;-2;-1];
exemple(3,3,:) = [1;-1;0];

%Spline

deg=2;
nbr=5;

P = subSpline(exemple,deg,nbr);

figure;
hold on;
plot3(exemple(:,:,1)',exemple(:,:,2)',exemple(:,:,3)','LineWidth',2)
surf(P(:,:,1),P(:,:,2),P(:,:,3));

pause;
close all;