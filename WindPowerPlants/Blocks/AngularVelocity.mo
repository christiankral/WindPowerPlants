within WindPowerPlants.Blocks;
model AngularVelocity "Calculates the angular velocity from tip speed ratio and wind speed"
  parameter Modelica.SIunits.Length D = 101 "Diameter of wind turbine";
  Modelica.Blocks.Interfaces.RealInput v(unit = "m/s") "Wind speed" annotation(Placement(transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput w(unit = "rad/s") "Angular velocity" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Interfaces.RealInput lambda "Tip speed ratio" annotation(Placement(transformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}})));
equation
  lambda * v = w * D / 2;
  annotation (Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 20}, {20, -20}}, lineColor = {95, 95, 95}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<html>
<p>This block calculates the angular velocity <code>w</code>
from tip speed ratio <code>lambda</code>
and wind speed <code>v</code> according to </p>
<p>
<img src=\"modelica://WindPowerPlants/Resources/Images/lambda.png\"/>.
</p>
</html>"));
end AngularVelocity;
