function [Pt,newPtsCtrl1,newPtsCtrl2] = bezier_geo(PtsCtrl)

PtsCtrl
[~,n]=size(PtsCtrl);


PtsCourant = PtsCtrl;
PtSuivant= PtsCtrl;
u=1;
newPtsCtrl1(:,u) = PtsCourant(:,1);
newPtsCtrl2(:,u) = PtsCourant(:,end);
u=u+1;

for i=n-1:-1:1
    for k=1:i
        PtSuivant(:,k) = 1/2*(PtsCourant(:,k)+PtsCourant(:,k+1));
        if(k==1)
            newPtsCtrl1(:,u) = PtSuivant(:,k);
        end;
        if(k==i)
            newPtsCtrl2(:,u) = PtSuivant(:,k);
            u = u+1;
        end;
    end;
    PtsCourant = PtSuivant;
end;

PtSuivant
Pt = PtSuivant(:,1);