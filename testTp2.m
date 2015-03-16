%tp2

%Dessin base de Bernstein
n=4;
figure;
hold on;

X = 0:0.01:1;

for j=0:n
    val = [];
    for pt=0:0.01:1
        val = [val bernstein(n,j,pt)];
    end;
    plot(X,val);
end;


%Bezier analytique
figure;
hold on;
P = saisi_points();
X = 0:0.01:1;
val = [];
for pt=0:0.01:1
    val = [val bezier_ana(P,pt)];
end;
plot(val(1,:),val(2,:));




