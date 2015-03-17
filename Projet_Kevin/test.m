%tp1

P = saisi_points();
[i,n] = size(P);
for k =1:n
    t(2*k-1) = k;
    t(2*k) = k;
end;

hold on;
X = 1:0.01:n;

for i=1:0.01:n
    h = neville(P,t,i);
    plot(h(1,1),h(2,1));
end;

%Test interpol Lagrange
figure;
hold on;

n=10;
P = zeros(2,n);
P(1,:) = 1:1:n;
for i=1:n
    L = P;
    P(2,i) = 1;
    for i=1:0.01:n
        h = neville(L,t,i);
        plot(h(1,1),h(2,1));
    end;
end;

