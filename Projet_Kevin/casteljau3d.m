function P=casteljau3d(PtsCtrl,x)

[~,n]=size(PtsCtrl);

PtsCourant = PtsCtrl;
PtSuivant= PtsCtrl;

for i=n-1:-1:1
    for k=1:i
        PtSuivant(1:3,k) = x*PtsCourant(1:3,k)+(1-x)*PtsCourant(1:3,k+1);
    end;
    PtsCourant = PtSuivant;
end;

P(1:3) = PtSuivant(1:3,1);