tore = zeros(4,4,3);
tore(1,1,:)=[3;0;0];
tore(2,1,:)=[2;0;1];
tore(3,1,:)=[1;0;0];
tore(4,1,:)=[2;0;-1];
tore(1,2,:)=[0;-3;0];
tore(2,2,:)=[0;-2;1];
tore(3,2,:)=[0;-1;0];
tore(4,2,:)=[0;-2;-1];
tore(1,3,:)=[-3;0;0];
tore(2,3,:)=[-2;0;1];
tore(3,3,:)=[-1;0;0];
tore(4,3,:)=[-2;0;-1];
tore(1,4,:)=[0;3;0];
tore(2,4,:)=[0;2;1];
tore(3,4,:)=[0;1;0];
tore(4,4,:)=[0;2;-1];


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

exemple = 5*randn(20,20,3);


[N1,N2,~] = size(exemple);
t1=0:N1;
t2=0:N2;
t1=t1/N1;
t2=t2/N2;

figure;
hold on;
umax=100;
vmax=100;
Iu = 0:umax;
Iv= 0:vmax;
for u=Iu
    for v=Iv
        P=lagrangeSurfAna(exemple,t1,t2,u/umax,v/vmax);
        %plot3(P(1),P(2),P(3),'+');
        H(u+1,v+1,:)=P;
    end;
    u/umax*100
end;

surf(H(:,:,1),H(:,:,2),H(:,:,3));

pause;
close all;