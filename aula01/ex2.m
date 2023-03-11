b= linspace (0,2*pi,200)
g= sin(8*b).*exp(b*j)
w= sin(4*b).*exp(b*j)


subplot(2,1,1)
plot(g, "-R")

subplot(2,1,2)
plot(w, "-B")