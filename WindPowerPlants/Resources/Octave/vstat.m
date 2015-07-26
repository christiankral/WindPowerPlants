% Program:
%   vstat.m
%
% Copyright (C)
%   Christian Kral, 2014-15
%
% License
%   Modelica 2 license
%
% Input parameters
%   month[:]    Integer vector holding the months to be evaluated
%   V[:,:]      Array with three columns where:
%               V[:,1]      time (s)
%               V[:,2]      v (m/s)
%               V[:,3]      month (integer)
%
% Version
%   1.0.0       Initial version

% Time (s)
t=V(:,1);
% Wind velocity (m/s)
v=V(:,2);
% Month
m=V(:,3);

% Determine indexes of investigated months
indx=[];
for k=1:length(month)
  indx=[indx;find(m==month(k))];
end

% Histogram section boundaries (edges) h(k)<v<h(k+1)
h=[0:ceil(max(v(indx)))]';
% Mean values of sections
hm=h+(h(2)-h(1))/2;
% Determine histogram data
f=histc(v(indx),h)/length(indx);

close all;
% Plot histogram
bar(hm,f);
% Adapt scaling
xlabel('$v$ (m/s)');
ylabel('$f$');

% Inline Weibull function
Fw = inline ("p(1)/p(2) .* (x/p(2)).^(p(1)-1) .*  exp (-(x/p(2)).^p(1))","x","p");
% Weibull initial guess
pinw = [3,10];
% Inline Raylegh function
Fr = inline ("(x(2)-x(1))*pi/2.*x/p(1)^2 .* exp (-pi/4.*x.^2./p(1)^2)","x","p");
% Raylegh initial guess
pinr = [5];
% Least square to determine Weibull parameters in pw
[fw,pw,kvgw,iterw,corpw,covpw,covrw,stdresidw,Zw,r2w]=leasqr(h,f,pinw,Fw);
% Least square to determine Raylegh parameters in pr
[fr,pr,kvgr,iterr,corpr,covpr,covrr,stdresidr,Zr,r2r]=leasqr(h,f,pinr,Fr);

% Plot results
hold on;
hh=h(1):0.01:h(end);
% Plot Weibull distribution
plot(hh,Fw(hh,pw),'r','LineWidth',2);
% Plot Raylegh distribution
plot(h,Fr(h,pr),'g','LineWidth',2);
legend('histogram','Weibull','Raylegh');
scale(h(1),h(end)+(h(end)-h(end-1)));
grid on;

% Summarize calculations
printf("Probability density function f(k) for h(k)<v<=h(k+1)\n");
printf("k\th(k)\tf(k)\n");
printf("\t(m/s)\t(s/m)\n");
printf("-------------------------\n");
for k=1:length(h)
  printf("%i\t%g\t%g\n",k,h(k),f(k));
end
printf("\nWeibull parameters\n");
printf("k = shape = %g\n",pw(1));
printf("lambda = scale = %g (m/s)\n",pw(2));
printf("\nRayleigh parameter\n");
printf("vm = average speed = %g (m/s)\n",pr(1));
