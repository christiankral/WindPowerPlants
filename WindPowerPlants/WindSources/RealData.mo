within WindPowerPlants.WindSources;
block RealData "Real wind data from file"
  parameter String fileName = "modelica://WindPowerPlants/Data/EVN01.tx" "File name" annotation(Dialog(group = "Wind data definition", enable = combiTimeTable.tableOnFile, loadSelector(filter = "Text files (*.txt)", caption = "Open file in which data are present")));
  parameter Modelica.Units.SI.Velocity veps(min=0.001) = 0.01
    "Threshold speed greater than zero";
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(final tableOnFile = true, final tableName = "velocity", final fileName = fileName, final extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, final smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, final columns = {2, 3}) annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput v(unit = "m/s") "Wind velocity" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Math.Max threshold annotation(Placement(transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(final k = veps) annotation(Placement(transformation(origin = {0, -30}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(combiTimeTable.y[1], threshold.u1) annotation(Line(points={{11,0},{20,0},{20,6},{38,6}},          color = {0, 0, 127}));
  connect(const.y, threshold.u2) annotation(Line(points = {{11, -30}, {20, -30}, {20, -6}, {38, -6}, {38, -6}}, color = {0, 0, 127}));
  connect(threshold.y, v) annotation(Line(points = {{61, 0}, {102, 0}, {102, 0}, {110, 0}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-76, -10}, {-72, -4}, {-64, -2}, {-54, -2}, {-46, -4}, {-40, -2}, {-34, 4}, {-26, 8}, {-18, 8}, {-14, 8}}, color = {0, 0, 255}), Line(points = {{-76, -10}, {-68, -6}, {-62, -6}, {-52, -10}, {-42, -12}, {-32, -8}, {-26, -4}, {-18, -4}, {-12, -6}, {-4, -10}, {6, -10}, {12, -6}, {20, 2}, {24, 12}, {22, 22}, {16, 26}, {10, 26}, {4, 24}, {-2, 26}, {-12, 24}, {-16, 18}, {-16, 12}, {-14, 8}, {-8, 2}, {0, 0}, {8, 4}, {8, 10}, {4, 14}, {0, 14}}, color = {0, 0, 255}), Line(points = {{-74, -10}, {-74, -10}, {-66, -8}, {-58, -12}, {-54, -18}, {-46, -20}, {-36, -18}, {-28, -14}, {-22, -14}, {-16, -18}, {-4, -26}, {6, -26}, {16, -24}, {24, -20}, {28, -16}}, color = {0, 0, 255}), Line(points = {{24, 12}, {28, 16}, {38, 20}, {46, 20}, {50, 16}, {52, 10}, {58, 16}, {68, 18}, {76, 14}, {78, 6}, {76, 0}, {70, -4}, {64, -8}, {58, -8}, {56, -16}, {52, -20}, {46, -24}, {36, -24}, {30, -20}, {28, -16}, {28, -6}, {32, 2}, {36, 4}, {40, 4}, {44, 2}, {46, -6}, {44, -12}}, color = {0, 0, 255}), Text(origin = {0, 121}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name")}), Documentation(info = "<html>
<p>
Real wind data read from file <code>fileName</code>. Zero speeds are not
allowed due to the calculation of the tip speed ratio. Therefore, a threshold
value <code>veps</code>must be indicated.</p>
</html>"));
end RealData;
