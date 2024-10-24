
%Example on using fmincon for minimizing
% We use Rosenbrock function
% The function is subject to inequality constraint that limits the search
% to the area within a circle of radius 0.5
fun = @(x)100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
options = optimoptions('fmincon','Display','iter-detailed','Algorithm','sqp');
%Linear constraint x(1)+2x(2)<=1
A = [1,2];
b = 1;
%No equality constraints
Aeq = [];
beq = [];
%Lower and upper bounds of the variables
lb = [-1.0,-1.0];
ub = [1.0,1.0];
%nonlinear constraint
nonlcon = @circlecon;
%Initial guess
x0 = [0,0];
x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options)
function [c,ceq] = circlecon(x)
c = (x(1)-0)^2 + (x(2)-0)^2 - (1/2)^2;
ceq = [];