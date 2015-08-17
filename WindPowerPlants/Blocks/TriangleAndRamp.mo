within WindPowerPlants.Blocks;

block TriangleAndRamp "Multiple steps"
  parameter Modelica.SIunits.Time T = 1 "Total time of varying outputs";
  parameter Integer stepNumber = 5 "Number of steps";
  parameter Real stepHeight = 1 "Total step height";
  parameter Real stepOffset = 0 "Offset";
  parameter Modelica.SIunits.Time startTime = 0 "Start time";
  parameter Real triangleHeight = 1 "Height of triangle output";
  parameter Real triangleOffset = 0 "Offsett of triangle output";
  Modelica.Blocks.Sources.Ramp ramp(final startTime = startTime, final height = stepNumber - 1, final duration = T * (stepNumber - 1) / stepNumber, final offset = 0) annotation(Placement(transformation(extent = {{-100, 0}, {-80, 20}})));
  Modelica.Blocks.Math.RealToInteger realToInteger annotation(Placement(transformation(extent = {{-40, 0}, {-20, 20}})));
  Modelica.Blocks.Math.IntegerToReal integerToReal annotation(Placement(transformation(extent = {{-10, 0}, {10, 20}})));
  Modelica.Blocks.Math.Feedback feedback annotation(Placement(transformation(extent = {{-70, 0}, {-50, 20}})));
  Modelica.Blocks.Sources.Constant const(final k = 0.5) annotation(Placement(transformation(extent = {{-100, -40}, {-80, -20}})));
  Modelica.Blocks.Sources.Constant constantOffset(final k = stepOffset) annotation(Placement(transformation(extent = {{20, 40}, {40, 60}})));
  Modelica.Blocks.Math.Add add annotation(Placement(transformation(extent = {{52, 0}, {72, 20}})));
  Modelica.Blocks.Math.Gain gain(final k = stepHeight / (stepNumber - 1)) annotation(Placement(transformation(extent = {{20, 0}, {40, 20}})));
  Modelica.Blocks.Sources.Trapezoid trapezoid(final amplitude = triangleHeight, final rising = T / stepNumber / 2, final width = 0, final falling = T / stepNumber / 2, final period = T / stepNumber, final nperiod = stepNumber, final offset = triangleOffset, final startTime = startTime) annotation(Placement(transformation(extent = {{60, -70}, {80, -50}})));
  Modelica.Blocks.Interfaces.RealOutput step annotation(Placement(transformation(extent = {{100, 50}, {120, 70}})));
  Modelica.Blocks.Interfaces.RealOutput triangle annotation(Placement(transformation(extent = {{100, -70}, {120, -50}})));
equation
  connect(realToInteger.y, integerToReal.u) annotation(Line(points = {{-19, 10}, {-12, 10}}, color = {255, 127, 0}));
  connect(ramp.y, feedback.u1) annotation(Line(points = {{-79, 10}, {-68, 10}}, color = {0, 0, 127}));
  connect(feedback.y, realToInteger.u) annotation(Line(points = {{-51, 10}, {-42, 10}}, color = {0, 0, 127}));
  connect(const.y, feedback.u2) annotation(Line(points = {{-79, -30}, {-60, -30}, {-60, 2}}, color = {0, 0, 127}));
  connect(integerToReal.y, gain.u) annotation(Line(points = {{11, 10}, {18, 10}}, color = {0, 0, 127}));
  connect(constantOffset.y, add.u1) annotation(Line(points = {{41, 50}, {44, 50}, {44, 16}, {50, 16}}, color = {0, 0, 127}));
  connect(gain.y, add.u2) annotation(Line(points = {{41, 10}, {44, 10}, {44, 4}, {50, 4}}, color = {0, 0, 127}));
  connect(add.y, step) annotation(Line(points = {{73, 10}, {90, 10}, {90, 60}, {110, 60}}, color = {0, 0, 127}));
  connect(trapezoid.y, triangle) annotation(Line(points = {{81, -60}, {110, -60}}, color = {0, 0, 127}));
  annotation( Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-60, 40}, {-20, 40}, {-20, 60}, {20, 60}, {20, 80}, {60, 80}}, color = {0, 0, 255}), Line(points = {{-58, -80}, {-40, -40}, {-20, -80}, {0, -40}, {20, -80}, {40, -40}, {60, -80}}, color = {0, 0, 255})}), Documentation(info = "<html>
<p>The step output starts from <code>stepOffset</code> and increases to <code>stepOffset + stepHeight</code> in <code>stepNumber</code>steps. The total duration of all step changes is equal to <code>T</code>. </p>
<p>During each step the <code>triangle</code> output is increased from
<code>triangleOffset</code> to <code>triangleOffset + triangleHeight</code>
and back to <code>triangleOffset</code>.</p>
<p>This way a variable sweep (<code>triangleOffset</code>) can be performed for different
stepwise changed variables (<code>step</code>).
</html>"));
end TriangleAndRamp;
