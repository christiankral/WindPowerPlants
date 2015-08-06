within WindPowerPlants.Records.TurbineData;

record Generic "Gerneric wind turbine record"
  extends Modelica.Icons.Record;
  parameter Real c1 "c1 coefficient";
  parameter Real c2 "c2 coefficient";
  parameter Real c3 "c3 coefficient";
  parameter Real c4 "c4 coefficient";
  parameter Real c5 "c5 coefficient";
  parameter Real c6 "c6 coefficient";
  annotation(Documentation(info = "<html>
<p>Wind turbine parameters to calculate the power coefficient
<img src=\"modelica://WindPowerPlants/Resources/Images/cp.png\"/> by means of:</p>
<p>
<img src=\"modelica://WindPowerPlants/Resources/Images/cpturbine.png\"/>
</p>
<p>
<img src=\"modelica://WindPowerPlants/Resources/Images/lambda1turbine.png\"/>
</p>
</html>"));
end Generic;