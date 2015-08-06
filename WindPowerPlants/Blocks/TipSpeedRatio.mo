within WindPowerPlants.Blocks;

model TipSpeedRatio "Determines tip speed ratio"
  parameter Modelica.SIunits.Length D = 101 "Diameter of wind turbine";
  Modelica.Blocks.Interfaces.RealInput v "Wind speed" annotation(Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput lambda "Tip speed ratio" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Interfaces.RealInput w "Angular velocity" annotation(Placement(visible = true, transformation(origin = {-110, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  lambda = D / 2 * w / v;
  annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(origin = {0.3526, -0.17987}, points = {{-0.706547, 0.533853}, {-20.3526, 80.1799}, {-0.3526, 100.18}, {19.6474, 80.1799}, {-20.3526, -79.8201}, {-0.3526, -99.8201}, {21.6474, -79.8201}, {0.00141724, 0.179871}})}), Documentation(info = "<html>
<p>
Tip speed ratio is determined from wind speed <code>v</code> and
the angular velocity <code>w</code> by means of:
</p>
<p><img src=\"modelica://WindPowerPlants/Resources/Images/lambda.png\"/>
</p>
</html>"));
end TipSpeedRatio;