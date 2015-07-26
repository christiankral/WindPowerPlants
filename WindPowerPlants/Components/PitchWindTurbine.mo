within WindPowerPlants.Components;
model PitchWindTurbine "Wind turbine with pitch input"
  extends WindPowerPlants.Interfaces.BaseWindTurbine;
  Real cp "Power coefficient";
  Modelica.SIunits.Power power "Power of flange_a";
  Modelica.SIunits.Power powerWind "Power of wind";
  Modelica.Blocks.Interfaces.RealInput beta "Pitch angle (deg)" annotation(Placement(transformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput limit
    "True if power limit is reached"                                              annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {0, -110})));
  Modelica.Blocks.Interfaces.RealOutput lambda "Tip speed ratio" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {-60, -110})));
  Modelica.Blocks.Interfaces.RealOutput w "Angular velocity of flange" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {60, -110})));
equation
  // Tip speed ratio
  lambda * v = w * D / 2;
  // Internal quantity
  cp = WindPowerPlants.Functions.cpVal(turbineData, lambda, beta);
  // Power of wind
  powerWind = 0.5 * Modelica.Constants.pi * rho * (D / 2) ^ 2 * v ^ 3;
  // Power harvested by power coefficient
  power = max(0, cp * powerWind);
  // POWER LIMITING RANGE
  // Set boolean indicator if power limiting range is reached
  limit = power >= powerMax or pre(limit) and power >= 0.99 * powerMax;
  // Angular velocity
  w = der(phi);
  // Power balance
  power = tau * w;
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), Documentation(info = "<html>
<p>The wind turbine model determined the power coefficient
<img src=\"modelica://WindPowerPlants/Resources/Images/cp.png\"/>
as a function of the input <img src=\"modelica://WindPowerPlants/Resources/Images/beta.png\"/> and the quantitiy
<img src=\"modelica://WindPowerPlants/Resources/Images/lambda1.png\"/>. 
The coefficients <img src=\"modelica://WindPowerPlants/Resources/Images/c1...c6.png\"/> 
are determined from a parameter record in
<a href=\"modelica://WindPowerPlantsRecords.Turbine\">Turbine</a> </p>
</html>"),
       Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Line(origin=  {-59.6474, -0.17987}, points=  {{-0.706547, 0.533853}, {-20.3526, 80.1799}, {-0.3526, 100.18}, {19.6474, 80.1799}, {-20.3526, -79.8201}, {-0.3526, -99.8201}, {21.6474, -79.8201}, {0.00141724, 0.179871}}), Ellipse(fillColor=  {95, 95, 95}, fillPattern=  FillPattern.HorizontalCylinder, extent=  {{-100, 10}, {-60, -10}}, endAngle=  360), Rectangle(fillColor=  {95, 95, 95}, fillPattern=  FillPattern.HorizontalCylinder, extent=  {{-80, 10}, {100, -10}}), Text(origin=  {0, 121}, lineColor=  {0, 0, 255}, extent=  {{-100, 9}, {100, -11}}, textString=  "%name"), Line(points=  {{0, 40}, {0, -100}}, color=  {255, 0, 255}, smooth=  Smooth.None), Line(points=  {{-40, 20}, {-38, 22}, {20, 80}, {80, 80}}, color=  {255, 0, 255}, smooth=  Smooth.None)}));
end PitchWindTurbine;
