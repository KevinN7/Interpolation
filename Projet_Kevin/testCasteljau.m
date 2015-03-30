%Bezier analytique
figure;
hold on;
P = saisi_points();

val = [];
for pt=0:0.01:1
    val = [val casteljau(P,pt)];
end;

plot(val(1,:),val(2,:));