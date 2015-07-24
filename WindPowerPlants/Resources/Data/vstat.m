V=dlmread("beresford2006.txt","\t",[2,0,52562,2]);
% Time (s)
t=V(:,1);
% Wind velocity (m/s)
v=V(:,2);
% Month
m=V(:,3);
% Power
P=V(:,4);

% Time distance
dt=t(2)-t(1);

% Histogram range
h=0:30;
dh=h(2)-h(1);
hm=h+dh/2;

% Histogram data
F=zeros(length(h),12);
% Power statistical data
PS=zeros(length(h),12);
% Time statistucak data belonging to PS
TS=zeros(length(h),12);

% Months to be evaluated
for month=1:12

% Rayleigh mean speed
VM=zeros(1,12);

% Determine indexes of 
indx=[];
for k=1:length(month)
  indx=[indx;find(m==month(k))];
end

% Determine histogram data
f=histc(v(indx),h)/length(indx);
F(:,month)=f;

% Inline Raylegh function
function f=raleigh(v,vm,dv)
  f=dv*pi/2.*(v/vm^2).*exp(-pi/4.*v.^2/vm^2);
endfunction 

% Mean speed
vm=mean(v(indx));
% Compute Rayleigh values
r=raleigh(hm,vm,dh);
% Averaged squared deviation
err=sqrt(mean((r-f').^2));
errn=length(h)*err;

% Store Rayleigh paramters
VM(month)=vm;

for k=1:length(h)
  hh=hm(k);
  indxx=find(v(indx)>=hh-dh/2 & v(indx)<hh+dh/2);
  if length(indxx)==0 
    PS(k,month)=0;
    TS(k,month)=0;
  else
    PS(k,month)=mean(P(indx(indxx)));
    TS(k,month)=length(indxx)*dt;
  end
end

end

figure
plot(v,P,'o');

PSTOTAL=zeros(length(h),1);
TSTOTAL=zeros(length(h),1);
for k=1:length(h)
  TSTOTAL(k,1)=sum(TS(k,:));
  if TSTOTAL(k,1)==0
    PSTOTAL(k,1)=0;
  else
    PSTOTAL(k,1)=sum(PS(k,:).*TS(k,:))/sum(TS(k,:));
  end
end 
break

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
