within WindPowerPlants.Functions;
function cpVal "Power coefficient"
  extends Modelica.Icons.Function;
  input WindPowerPlants.Records.TurbineData.Generic turbineData "Wind turbine record";
  input Real lambda "Tip speed ratio";
  input Real beta "Pitch angle in degree";
  output Real cp "Power coefficient";
protected
  Real lambda1 "Internal lambda";
algorithm
  lambda1 := 1 / (1 / (lambda + 0.08*beta + Modelica.Constants.eps) - 0.035 / (beta ^ 3 + 1));
  cp := turbineData.c1 * (turbineData.c2 / lambda1 - turbineData.c3 * beta - turbineData.c4) * exp(-turbineData.c5 / lambda1) + turbineData.c6 * lambda1;
  cp := max(0, cp);
  annotation(Documentation(info = "<html>
This function determines the power coefficient cp from <code>lambda</code>, <code>beta</code>
and the wind turbine coefficients of
<a href=\"WindPowerPlants.Records.TurbineControlData.Generic\">TurbineControlData</a>.
</html>"));
end cpVal;
