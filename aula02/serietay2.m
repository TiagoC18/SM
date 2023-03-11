x = linspace(0,2*pi);
y = sin(x)
sen_serie2 = f2(x,2)
sen_serie10 = f2(x,10)
plot(x,y,'r',x,sen_serie2,'b',x,sen_serie10,'g')
legend('sin','N=2','N=10')