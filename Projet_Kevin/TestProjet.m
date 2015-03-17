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
exemple(2,3,:) = [0;-1;-1];
exemple(3,3,:) = [1;-1;0];
%exemple(4,3,:) = [1;-1;0];
%exemple(1,4,:) = [-1;-1;0];
%exemple(2,4,:) = [0;-1;0];
%exemple(3,4,:) = [1;-1;0];
%exemple(4,4,:) = [1;-1;0];

figure;
hold on;

for i = 0:0.1:1
    for j=0:0.01:1
        P = surfBezier(exemple,i,j);
        plot3(P(1),P(2),P(3));
    end;
end;