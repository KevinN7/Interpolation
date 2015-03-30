function val = deBoor(k,degree,i,x,knots,ctrlPoints)
    if( k == 0)
        res = ctrlPoints(i);
    else
        alpha = (x-knots(i))/(knots(i+degree+1-k)-knots(i));
        res = deBoor(k-1,degree, i-1, x, knots, ctrlPoints)*(1-alpha)+deBoor(k-1,degree, i, x, knots, ctrlPoints)*alpha ;
    end;
    
    val =res;