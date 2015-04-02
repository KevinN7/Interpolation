%test Lagrange

%P = saisi_points();
%[i,n] = size(P);

P=[0 1 2 3 5 6 9; 1 2 3 5 6 8 7 ;0 1 2 3 5 6 9]
t=[0 1 2 3 4 5 6];

figure;
hold on;

imax=200;
I=0:imax;
for i=I
    H = lagrangeCurbAna(P,t,i/imax);
    plot3(H(1),H(2),H(3));
end;