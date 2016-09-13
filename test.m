clear
close all

load p1p2
x=p1;
lambda=10e4;

[xbc,xb]=airPLS(x, lambda,2,0.05);

figure
plot(x,'r')
hold on
plot(xbc,'g')
plot(xb,'k')