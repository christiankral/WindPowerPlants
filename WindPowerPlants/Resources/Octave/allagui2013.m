% Parameters for cpcont.m
%
% Literature
%   [Allagui2013]
%     Mehdi Allagui, Othman B.K Hasnaoui, Jamel Belhadj (2013),
%     'Exploitation of pitch control to improve the integration of a
%     direct drive wind turbine to the grid', J. Electrical
%     Systems 9(2), 179-190.
%
% Turbine coefficients
		c1=0.22;
		c2=116;
		c3=0.4;
		c4=5;
		c5=12.5;
		c6=0;
% Investigated range
lambda=[1:0.01:30];
beta=[0:0.02:40]';

cpcont;
