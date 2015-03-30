function res = neville(P,t,x)

[~,n] = size(P);

for k=1:n-1
    %Generation du nouveau point
    nouveaup(:,k) = ( (t(2*k+2)-x)/( t(2*k+2) - t(2*k-1)))*P(:,k) + ((x-t(2*k-1))/(t(2*k+2)-t(2*k-1)))*P(:,k+1);
    
    %Generations des nouveaux temps
    newt(2*k-1) = t(2*k-1);
    newt(2*k) = t(2*k+2);
end;

if (n == 2)
    res = nouveaup(:,1); 
else
    res = neville(nouveaup,newt,x);
end;