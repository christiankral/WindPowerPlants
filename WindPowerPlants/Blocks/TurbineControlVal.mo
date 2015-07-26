within WindPowerPlants.Blocks;
model TurbineControlVal "Optimum beta determined from control data"
  parameter WindPowerPlants.Records.TurbineControlData.Generic turbineControlData
    "Wind turbine record";
  Modelica.Blocks.Interfaces.RealInput lambda "Tip speed ratio" annotation(Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput beta "Pitch angle" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
equation
  beta = WindPowerPlants.Functions.turbineControlVal(turbineControlData=  turbineControlData, lambda=  lambda);
  annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent=  {{-100, 100}, {100, -100}}, lineColor=  {0, 0, 127}, fillColor=  {255, 255, 255}, fillPattern=  FillPattern.Solid), Line(points=  {{-60, -60}, {60, -60}}, color=  {0, 0, 127}, smooth=  Smooth.None), Polygon(points=  {{60, -60}, {40, -56}, {40, -64}, {60, -60}}, lineColor=  {0, 0, 127}, smooth=  Smooth.None, fillColor=  {255, 255, 255}, fillPattern=  FillPattern.Solid), Line(points=  {{-60, -60}, {-60, 60}}, color=  {0, 0, 127}, smooth=  Smooth.None), Polygon(points=  {{-60, 60}, {-64, 40}, {-56, 40}, {-60, 60}}, lineColor=  {0, 0, 127}, smooth=  Smooth.None, fillColor=  {255, 255, 255}, fillPattern=  FillPattern.Solid), Line(points=  {{-52, -42}, {-40, -28}, {-32, -14}, {-26, 0}, {-22, 14}, {-18, 28}, {-14, 38}, {-8, 40}, {-4, 38}, {4, 24}, {12, 4}, {20, -26}, {24, -60}}, color=  {0, 0, 127}, smooth=  Smooth.None), Text(extent=  {{-150, 150}, {150, 110}}, textString=  "%name", lineColor=  {0, 0, 255})}), Documentation(info = "<html>
<p>
In this model the actual pitch angle <code>beta</code> is determined from the actual
tip speed ratio <code>lambda</code> using function
<a href=\"modelica://WindPowerPlants.Functions.turbineControlVal\">turbineControlVal</a>. The turbe specific parameters of this function are retrieved from
<a href=\"modelica://WindPowerPlants.Records.TurbineControlData.Generic\">records</a>.
</p>
</html>"));
end TurbineControlVal;
