function res = subdivise(PtsCtrl,degres,nbr)


Pts = PtsCtrl;

for g=1:nbr
    [~,nbr] = size(Pts);

    for i = 1:nbr
        repet(:,2*i-1) = Pts(:,i);
        repet(:,2*i) = Pts(:,i);
    end;

    g = 2*nbr-1;

    for c = 1:degres
        for k = 1:g
            mil(:,k) = 0.5*(repet(:,k) +repet(:,k+1));
        end;
        repet = mil;
        g=g-1;
    end;

    Pts =[PtsCtrl(:,1) mil(:,1:g+1) PtsCtrl(:,end)];
end;

res = mil(:,1:g+1);