within WindPowerPlants.Blocks;

model SpeedAdaptor
  parameter Modelica.SIunits.Height hin = 10 "Height of input speed vin";
  parameter Modelica.SIunits.Height hout = 70 "Height of output speed vout";
  parameter Modelica.SIunits.Length roughness = 0.1 "Roughness length";
  Modelica.Blocks.Interfaces.RealInput vin "Input velocity" annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput vout "Output velocity" annotation(Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
equation
  vout = vin * log(hout / roughness) / log(hin / roughness);
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-98, -98}, {98, 98}, {98, 98}}), Text(origin = {-18, 118}, lineColor = {0, 0, 255}, extent = {{-82, 16}, {118, -6}}, textString = "%name")}), Documentation(info = "<html>
<p>
This model transformes wind speeds with respect of height <code>hin</code>
to wind speeds of height <code>hout</code>.</p>
<pre>
  vout = vin * log(hout / roughness) / log(hin / roughness)
</pre>
<p>Typical <code>roughness</code> lengths can be obtained from
<a href=\"https://energypedia.info/wiki/Estimation_of_Wind_Energy_Production#Roughness\">https://energypedia.info/</a>
</p>
</html>"));
end SpeedAdaptor;