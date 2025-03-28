function [f,gf] = onehump(x)
% ONEHUMP Helper function for Tutorial for the Optimization Toolbox demo

%   Copyright 2008-2009 The MathWorks, Inc.

r = x(1)^2 + x(2)^2;
s = exp(-r);
f = x(1)*s+r/20;

if nargout > 1
   gf = [(1-2*x(1)^2)*s+x(1)/10;
       -2*x(1)*x(2)*s+x(2)/10];
end
