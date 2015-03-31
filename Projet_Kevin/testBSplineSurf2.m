exemple = zeros(4,2,3);
exemple(1,1,:)=[0;3;0];
exemple(2,1,:)=[0;0;0];
exemple(3,1,:)=[0;0;3];
exemple(4,1,:)=[0;3;3];
exemple(1,2,:)=[3;3;0];
exemple(2,2,:)=[3;0;0];
exemple(3,2,:)=[3;0;3];
exemple(4,2,:)=[3;3;3];

for i=0:0.01:1
    for j=0:0.01:1
        P = surfBezier(exemple,i,j);
        I=ceil(i*100+0.1);
        J=ceil(j*100+0.1);
        G(I,J,1:3)=P(1:3);
    end;
end;

plot3(G(:,:,1),G(:,:,2),G(:,:,3));