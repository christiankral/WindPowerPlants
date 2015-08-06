within WindPowerPlants.Blocks;

block LogTerminal "Log data at terminal time"
  parameter String preString = "Variable = " "String prior to numeric value";
  parameter String postString = "unit" "Unit of numeric value";
  parameter Real gain = 1 "Gain of input signal";
  discrete Real terminalValue(final start = 0, final fixed = true) "Terminal value including gain";
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}), iconTransformation(extent = {{-140, -20}, {-100, 20}})));
equation
  when terminal() then
    terminalValue = gain * u;
    Modelica.Utilities.Streams.print(preString + String(terminalValue) + postString);
  end when;
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 102}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-58, 60}, {62, -60}}, lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-40, -40}, {40, 40}}, color = {255, 0, 0}), Line(points = {{-40, 40}, {40, -40}}, color = {255, 0, 0}), Text(origin = {0, 123}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})), Documentation(info = "<html>
<p>This block writes a value to the Modelica log file once the simulation terminates. The output to the Modelica log file consists of:
<ul>
<li>a string written prior to the numeric value</li>
<li>a numeric value being equal to the input signal times the <code>gain</code> at the termination time of the simulation</li>
<li>a string written after the numeric value</li>
</p>
</html>"));
end LogTerminal;