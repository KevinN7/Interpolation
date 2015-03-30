function val = splineBase(i,k,t,x)
%i dans 0;n
%t = [t0 t1 ... tm]
%k:ordre

if(k==1)
    if(x>=t(i+1) && x<t(i+2))
        res = 1;
    else
        res = 0;
    end;
else
    res = ((x-t(i+1))/(t(i+k)-t(i+1)))*splineBase(i,k-1,t,x) + ((t(i+k+1)-x)/(t(i+k+1)-t(i+2)))*splineBase(i+1,k-1,t,x);
end;

val=res;