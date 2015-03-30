function P=casteljau(PtsCtrl,x)

[dim,n]=size(PtsCtrl);

PtsCourant = PtsCtrl;

for i=n-1:-1:1
    for k=1:i
        PtSuivant(:,k) = x*PtsCourant(:,k)+(1-x)*PtsCourant(:,k+1);
    end;
    PtsCourant = PtSuivant;
end;

P = zeros(dim,1);
P(:) = PtSuivant(:,1);