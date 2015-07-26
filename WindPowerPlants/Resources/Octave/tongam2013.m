% Parameters for cpcont.m
%
% Literature
%   [Thongam2013]
%     Thongam, J.; Bouchard, P.; Ezzaidi, H. & Ouhrouche, M. (2009),
%     'Wind speed sensorless maximum power point tracking control of
%     variable speed wind energy conversion systems', Electric Machines
%     and Drives Conference, 2009. IEMDC '09. IEEE International,
%     1832-1837.
%
% Turbine coefficients
		c1=0.5176;
		c2=116;
		c3=0.4;
		c4=5;
		c5=21;
		c6=0.006795;
% Investigated range
lambda=[1:0.01:30];
beta=[0:0.02:40]';

cpcont;
