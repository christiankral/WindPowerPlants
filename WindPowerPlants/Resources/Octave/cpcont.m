% Program
%   cpopt.m
%
% Purpose
%   This program determines iso cp lines and the characteristic
%   parameters of a wind turbine, characterized by a model as provided
%   by [Heier2009]
%
% Authors
%   Christian Kral
%
% Copyright
%   Christian Kral, 1060 Vienna, Austria, http://christiankral.net
%
% License
%   Modelica License 1.1
%
% Version history
%   1.0.0    2015-02-08    Ubuntu 14.04    Octave 3.8.1
%   1.1.0    2015-07-23    Ubuntu 14.04    Octave 3.8.1
%
% Input parameters to operate the script are
%   c1
%   c2
%   c3
%   c4
%   c5
%   c6
%
% The parameters c1..c6 apply to:
%   cp = c1*(c2/lambda1+c3*beta-c4)*exp(c5/lambda1)+c6*lambda1
% where
%   lambda1 = 1/(1/(lambda+0.089)-0.035/(beta^3+1))
% and
%   lambda = w*D/(2*v)
% with
%   w        angular velocity (rad/s)
%   D        turbine diameter (m)
%   v        wind speed (m/s)
%
% Literature
%   [Heier2009]
%     Heier, S. (2009), Windkraftanlagen: Systemauslegung,
%     Netzintegration und Regelung, Springer.

% Calculate cp
cp=zeros(length(beta),length(lambda));
for k=1:length(beta)
	lambda1=1 ./ (1 ./ (lambda + 0.089) - 0.035 / (beta(k) ^ 3 + 1));
	cp(k,:)=max(c1*(c2./lambda1-c3*beta(k)-c4).*exp(-c5./lambda1)+c6*lambda1,zeros(1,length(lambda)));
end
hold off;
[c,h]=contour(lambda,beta,cp);
clabel(c,h);
xlabel('$\lambda$');
ylabel('$\beta$ (deg)');
hold on;
% Determine maximum cp w.r.t. to lambda
[cpmax1,imax1]=max(cp,[],1);
plot(lambda,beta(imax1),'k');

% Determine maximum cp of entire array
[cpOpt,iOpt] = max(cp(:));
[iBetaOpt,iLambdaOpt]=ind2sub(size(cp),iOpt);
betaOpt=beta(iBetaOpt);
lambdaOpt=lambda(iLambdaOpt);

% Optimum for beta>0
betaopt=beta(imax1);
iopt=find(betaopt>0);
lambdax = lambda(iopt);
betax = betaopt(iopt);
% Plot all beta>0
plot(lambdax,betax,'linewidth',2,'k');
% Make third grade poly approximation
p3=polyfit(lambdax,betax',3);
plot(lambdax,polyval(p3,lambdax),'k--');
polyout(p3,'lambda')
disp "\nHigh precision poly coefficients"
format long
p3
format short
printf("lambdaMin = %g\n",lambdax(1));
printf("lambdaMax = %g\n",lambdax(end));
printf("lambdaOpt = %g\n",lambdaOpt);
printf("betaMin (deg) = %g \taccording to model validity\n",0);
printf("betaMax (deg) = %g \taccording to model validity\n",90);
printf("betaOpt (deg) = %g\n",betaOpt);
printf("cpOpt = %g @ lambda = lambdaOpt @ beta = betaOpt\n",cpOpt);
