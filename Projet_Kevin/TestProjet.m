exemple = zeros(3,3,3);

exemple(1,1,:) = [-1;1;0];
exemple(2,1,:) = [0;1;0];
exemple(3,1,:) = [1;1;0];
%exemple(4,1,:) = [1;1;0];
exemple(1,2,:) = [-1;0;0];
exemple(2,2,:) = [0;0;1];
exemple(3,2,:) = [1;0;0];
%exemple(4,2,:) = [1;0;0];
exemple(1,3,:) = [-1;-1;0];
exemple(2,3,:) = [0;-2;-1];
exemple(3,3,:) = [1;-1;0];
%exemple(4,3,:) = [1;-1;0];
%exemple(1,4,:) = [-1;-1;0];
%exemple(2,4,:) = [0;-1;0];
%exemple(3,4,:) = [1;-1;0];
%exemple(4,4,:) = [1;-1;0];


%Bezier
figure;
hold on;
plot3(exemple(:,:,1)',exemple(:,:,2)',exemple(:,:,3)','LineWidth',2)

for i = 0:0.01:1
    for j=0:0.01:1
        P = surfBezier(exemple,i,j);
        %plot3(P(1),P(2),P(3));
        I=ceil(i*100+0.1);
        J=ceil(j*100+0.1);
        G(I,J,1:3) = P;
    end;
end;

surf(G(:,:,1),G(:,:,2),G(:,:,3));

%Spline

deg=2;
nbr=3;

P = subSpline(exemple,deg,nbr);


figure;
hold on;
plot3(exemple(:,:,1)',exemple(:,:,2)',exemple(:,:,3)','LineWidth',2)
surf(P(:,:,1),P(:,:,2),P(:,:,3));


% figure;
% hold on;
% plot3(exemple(:,:,1)',exemple(:,:,2)',exemple(:,:,3)','LineWidth',2)
% 
% [n,m,~]=size(P);
% for i=1:n
%     for j=1:m
%         plot3(P(i,j,1),P(i,j,2),P(i,j,3));
%     end;
% end;
% 
% pause;
pause;
close all;