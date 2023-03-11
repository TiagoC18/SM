x= linspace(-1,1,51);
y=x;
[xx, yy]=meshgrid(x,y);
f= cos(4*pi*(xx+yy)).*exp(-abs(xx+yy));
surf(x,y,f)
shading interp