function res = select(n1,n2)

figure;
hold on;
axis on;
xlabel('x');
ylabel('y');
zlabel('z');

for i=1:n2
    P = ginput(n1);
    P = P';
    [z,~] = ginput(n1);
    z = z';
    Pts = [P;z];
    plot3(Pts(1,:),Pts(2,:),Pts(3,:));
end;


