% Parameters for cpcont.m
%
% Literature
%   [Heier2009] 
%     Heier, S. (2009), Windkraftanlagen: Systemauslegung, 
%     Netzintegration und Regelung, Springer.
%
% Turbine coefficients
		c1=0.5;
		c2=116;
		c3=0.4;
		c4=5;
		c5=21;
		c6=0;
% Investigated range
lambda=[1:0.01:30];
beta=[0:0.02:40]';

cpcont;
