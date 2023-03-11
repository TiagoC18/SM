%Ex 1., 2., 3. & 4.

Ta = 0.01;
%a)
t = [0:Ta:5];
x = 2*sin(4*pi*t);

figure(1);
plot(t,x);
xlabel('time (s)');
ylabel('amplitude');
title('Signal A');

%b)
t = [0:Ta:5];
y = cos(10*pi*t);

figure(2);
plot(t,y);
xlabel('time (s)');
ylabel('amplitude');
title('Signal B');

%c)
z = times(x,y);
%OR: z = x.*y; ->Operacao de mult. elemento a elemento

figure(3);
plot(t,z);
xlabel('time (s)');
ylabel('amplitude');
title('Signal C');


%d)
t = [0:Ta:10];
w = plus(3*sin(pi*t),2*sin(6*pi*t));

figure(4);
plot(t,w);
xlabel('time (s)');
ylabel('amplitude');
title('Signal D');


%e)
t1 = [0:Ta:5];
t2 = [0:Ta:5];
N = length(t1);
q = zeros(N,N);
for i=1:N
   q(:,i) = 2*sin(2*pi*(2*t1+2*t2(i)));
end

figure(5);
mesh(t1,t2,q)
xlabel('time 1 (s)');
ylabel('time 2 (s)');
title('Signal E');


%Conclusao:  Maior tempo de amostragem: Representacao menos accurate do sinal mas ocupa menos memoria e e mais rapido


%Ex 3.

figure(6);
xlabel('time (s)');
ylabel('amplitude');
title('Ex 3');
hold on;


t = [0:Ta:5];
plot(t,x,"r");
plot(t,y,"--b","linewidth",3);
plot(t,z,"-g.");
t = [0:Ta:10];
plot(t,w,"y","linewidth",3);


%Ex 4.

figure(5);
mesh(t1,t2,q)
xlabel('time 1 (s)');
ylabel('time 2 (s)');
title('Signal E');

colorbar;
cmap = colormap;
cmap_gray = [[0:(1/64):1]' [0:(1/64):1]' [0:(1/64):1]']; % caderno Pratica 1/10/18
colormap(cmap_gray);

