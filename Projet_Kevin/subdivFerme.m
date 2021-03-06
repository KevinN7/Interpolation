function res = subdivFerme(PtsCtrl,degres,nbr)

if(nbr==0)
    res = PtsCtrl(:,:);
else
    [dim,n] = size(PtsCtrl);
    
    %Dedoublement des points de controle
    repet = zeros(dim,n);
    for i = 1:n
        repet(:,2*i-1) = PtsCtrl(:,i);
        repet(:,2*i) = PtsCtrl(:,i);
    end;
    
    %Milieu successif
    h=2*n;
    mil = zeros(dim,h);
    for i = 1:degres
        for k = 1:(h-1)
            mil(:,k) = 0.5*(repet(:,k)+repet(:,k+1));
        end;
        mil(:,h) = 0.5*(repet(:,h)+repet(:,1));
        repet = mil;
    end;
    
    res = subdivFerme(mil(:,1:h),degres,nbr-1);
end;