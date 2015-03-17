function Pt = bezier_sub(PtsCtrl,prof)

if (prof==0)
    [res,~,~] = bezier_geo(PtsCtrl);
else
    [res3,newPtsCtrl1,newPtsCtrl2] = bezier_geo(PtsCtrl);
    res1 = bezier_sub(newPtsCtrl1,prof-1);
    res2 = bezier_sub(newPtsCtrl2,prof-1);
    res = [res3 res1 res2];
end

Pt = res;