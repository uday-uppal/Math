clc
clear data
x=0:0.001:10
y=cos(x)
z=sin(x)
plot(x,z,"r",x,y,"g")
xlabel("X Axis")
ylabel("Y Axis")
title("X-Y Plot")
legend("Sin","Cos")