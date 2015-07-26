within WindPowerPlants.Records.TurbineControlData;
record Generic "Generic turbine control data"
  extends Modelica.Icons.Record;
  parameter Real p[:] "Polynominal coefficients";
  parameter Real lambdaMin "Minimum tip speed ratio of control range";
  parameter Real lambdaMax "Maximum tip speed ratio of control range";
  parameter Real lambdaOpt "Optimum tip speed ratio, matching betaOpt";
  parameter Real betaMin "Minimum pitch angle";
  parameter Real betaMax "Maximum pitch angle";
  parameter Real betaOpt "Optimum pitch angle, matching lambdaOpt";
  annotation(Documentation(info = "<html>
<p>
</p>For <code>lambdaMin &lt;= lambda &lt;= lambdaMax</code> the pitch angle <code>beta<code> is approximated by a polynom</p>
<p>
<pre>
  beta = sum (lambda^(n-k+1) * p[k] for k in 1:n)
</pre>
</p>
<p>where <code>n-1</code> is the degree of the polynom. The optimum power coefficient is indicated by <code>beta = betaOpt </code> and <code>lambda = lambdaOpt</code>.</p>
<p>The polynominal parameters can be calculated by the Octave script
<a href=\"modelica://WindPowerPlants/Octave/cpcont.m>cpcont.m</a>. 
</p>
</html>"));
end Generic;
