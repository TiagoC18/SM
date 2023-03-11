function[x,t]=ex2ff(Ta,f,Np,a,b)
    p=Np/(Ta*f);
    t=(0:p-1)*Ta;

    sumA=0;
    sumB=0;
    for k=1 : length(a)
        sumA=sumA + a(k)*cos(2.*pi.*k.*f.*t);
        sumB=sumB +b(k)*sin(2.*pi.*k.*f.*t);
    end
    x= sumA+sumB;
end