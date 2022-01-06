oldparam = sympref('HeavisideAtOrigin',1);
%% Laplace Transform
% part one

syms t
f1 = t*heaviside(t-1);
f2 = sin(t)*exp(-4*t) * heaviside(t);
f3 = 2*t*cos (3*t)*heaviside(t);
laplace(f1)
laplace(f2)
laplace(f3)
%% 
% part two

syms s
F1 = (1/(s*(s+1)))*exp(-3*s);
F2 = 4/(s*(s^2 +4));
F3 = 1/(s^2 + 3 * s + 1);
ilaplace(F1)
ilaplace(F2)
ilaplace(F3)
%% 
% part three

G =(8)/(s^2 +s + 4)
delta_res = ilaplace(G)
step_res = ilaplace(G*(1/s))
t = -1:0.001:10;
y2 = subs(delta_res,t) .* (t>=0);
plot_fig(t,y2,"unit impulse response")

t = -1:0.001:10;
y2 = subs(step_res,t) .* (t>=0);
plot_fig(t,y2,"step response")
H = tf([8],[1,1,4])
bode(H)
%% 
% part four
% 
% a = 4

G =(2*s+1)/(s^2 + 4*s + 7)
step_res = ilaplace(G*(1/s))
t = -1:0.001:10;
y2 = subs(step_res,t) .* (t>=0);
plot_fig(t,y2,"step response with a = 4")
clear t
syms t
step_res =  sym(1/7) - (exp((-2*t))*(cos(sqrt(sym(3))*t) - 4*sqrt(sym(3))*sin(sqrt(sym(3))*t)))/7
limit(step_res,t,Inf)
t= 0:0.001:2;
y = subs(step_res,t) .* (t>=0);
[val,index] = max(y);
display("maximum at = ");
display(t(index))
display("value of maximum is :")
display(double(val))
%% 
% a = 6

G =(2*s+1)/(s^2 + 6*s + 7)
step_res = ilaplace(G*(1/s))
t = -1:0.001:10;
y2 = subs(step_res,t) .* (t>=0);
plot_fig(t,y2,"step response with a = 6")
clear t
syms t
step_res =  sym(step_res)
limit(step_res,t,Inf)
t= 0:0.001:2;
y = subs(step_res,t) .* (t>=0);
[val,index] = max(y);
display("maximum at = ");
display(t(index))
display("value of maximum is :")
display(double(val))
%% Z transform
% part one

syms n
x1 = (heaviside(n+2)-heaviside(n-1))*(-n+1)-(heaviside(n-1) - heaviside(n-3))*(n+1);
t1 = -5:5;
step_fig(t1,subs(x1,t1),"plot");
x1 = (heaviside(n)-heaviside(n-3))*(-n+3)+(heaviside(n-3) - heaviside(n-5))*(-n+1)
t1 = -5:10;
step_fig(t1,subs(x1,t1),"plot");
syms z
H = z^{-2} * ztrans(x1) + 2*z^{-1}+3
H = (3*z^2 + 2*z + 1-2*z^{-1}-3*z^{-2})/(z^2)
plot_z_plan([3,2,1,-2,-3],[1,0,0])
x2 = 0.8^n * heaviside(n-2)
t2 = 0:15;
step_fig(t2,subs(x2,t2),"plot")
H = ztrans(x2)
plot_z_plan([5/4,0],[5/4,-1,0,0])

x3 = 2^n* cos(0.4*pi*n) * heaviside(n)
t3 = -2:6;
step_fig(t3,subs(x3,t3),"plot")
H = ztrans(x3)
H = (z-2*cos(0.4*pi))/(z^2-4*cos(0.4*pi)*z + 4)
plot_z_plan([1,-2*cos(0.4*pi)],[1,-4*cos(0.4*pi),4])
[r,p,k] = residuez([1,-2*cos(0.4*pi)],[1,-4*cos(0.4*pi),4])
%% 
% part two
% 
% a

syms z
num1 = [1,-1];
dom1 = [1,-1,0.5];
H1 = (z-1)/(z^2 - z + 0.5)
plot_z_plan(num1,dom1)
num2 = [1,0];
dom2 = [2, - sqrt(3),0.5];
H2 = (z)/(z^2 - sqrt(3)*z + 0.5)
plot_z_plan(num2,dom2)
%% 
% b

[r1,p1,k1] = residuez(num1,dom1)
[r2,p2,k2] = residuez(num2,dom2)
%% 
% c

oldparam = sympref('HeavisideAtOrigin',1);
h1 = iztrans(H1)
h2 = iztrans(H2)
%% 
% 
% 
% 
% 
% 
% 
%