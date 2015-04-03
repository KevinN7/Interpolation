clear all;

exemple(1,1,:) = [1;1;-1];
exemple(2,1,:) = [1;2;1];
exemple(3,1,:) = [1;3;2];
exemple(4,1,:) = [1;4;1];

exemple(1,2,:) = [2;1;-2];
exemple(2,2,:) = [2;2;5];
exemple(3,2,:) = [2;3;2];
exemple(4,2,:) = [2;4;0];

exemple(1,3,:) = [3;1;1];
exemple(2,3,:) = [3;2;-1];
exemple(3,3,:) = [3;3;2];
exemple(4,3,:) = [3;4;3];

exemple(1,4,:) = [4;1;-2];
exemple(2,4,:) = [4;2;2];
exemple(3,4,:) = [4;3;0];
exemple(4,4,:) = [4;4;1];

exemple(1,5,:) = [5;1;-2];
exemple(2,5,:) = [5;2;2];
exemple(3,5,:) = [5;3;0];
exemple(4,5,:) = [5;4;1];


figure;
hold on;

for i=1:4
    for j=1:5
        plot3(exemple(i,j,1),exemple(i,j,2),exemple(i,j,3),'o','MarkerSize', 5,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63]);
    end;
end;

t1=1:10;
t2=1:10;
for u=1:0.1:5
    for v=1:0.1:5
        P=lagrangeSurfAna(exemple,t1,t2,u,v);
        I=floor(100+u*10+0.1);
        J=floor(100+v*10+0.1);
        K(I,J,1:3) = P;
    end;
end;
surf(K(:,:,1),K(:,:,2),K(:,:,3));
pause;
close all;'MarkerEdgeColor','k',