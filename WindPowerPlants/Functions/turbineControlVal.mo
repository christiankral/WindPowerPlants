within WindPowerPlants.Functions;
function turbineControlVal "Evaluation of polynominal for given input"
  extends Modelica.Icons.Function;
  input WindPowerPlants.Records.TurbineControlData.Generic turbineControlData
    "turbine control record";
  input Real lambda "Evaluation variable";
  output Real beta "Approximated pitch angle";
algorithm
  beta := 0;
  if lambda >= turbineControlData.lambdaMin and lambda <= turbineControlData.lambdaMax then
    for k in 1:size(turbineControlData.p, 1) loop
      beta := beta + turbineControlData.p[k] * lambda ^ (size(turbineControlData.p, 1) - k);
    end for;
  end if;
  annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>This function evaluates the polynomial approximation of the optimum power coefficient cp
storted in the turbine record 
<a href=\"WindPowerPlants.Records.TurbineControlData.Generic\">TurbineControlData</a>.
</p>
</html>"));
end turbineControlVal;
