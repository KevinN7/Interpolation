function P=casteljau3d(PtsCtrl,x)

[~,n]=size(PtsCtrl);

PtsCourant = PtsCtrl;
PtSuivant= PtsCtrl;

for i=n-1:-1:1
    for k=1:i
        PtSuivant(:,k) = x*(PtsCourant(:,k)+PtsCourant(:,k+1));
    end;
    PtsCourant = PtSuivant;
end;

P = PtSuivant(:,1);