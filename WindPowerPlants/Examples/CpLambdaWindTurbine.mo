within WindPowerPlants.Examples;

model CpLambdaWindTurbine "Investigate cp versus lambda of wind turbine for different pitch angles"
  extends Modelica.Icons.Example;
  Components.PitchWindTurbine windturbine(D = 101, powerMax = 3.05E6, turbineData = WindPowerPlants.Records.TurbineData.Heier2009()) annotation(Placement(transformation(origin = {-22, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Speed speed(exact = true) annotation(Placement(transformation(origin = {20, 0}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant rotationalSpeed(k = 1.4661) annotation(Placement(transformation(origin = {60, 0}, extent = {{10, -10}, {-10, 10}})));
  Blocks.TriangleAndRamp triangleAndRamp(T = 1, stepNumber = 10, stepHeight = 90, stepOffset = 0, triangleHeight = 18, triangleOffset = 2) annotation(Placement(transformation(extent = {{-80, 10}, {-60, -10}})));
equation
  connect(rotationalSpeed.y, speed.w_ref) annotation(Line(points = {{49, 0}, {33.2743, 0}, {33.2743, 6.66134e-016}, {32, 6.66134e-016}}));
  connect(speed.flange, windturbine.flange_a) annotation(Line(points = {{10, 0}, {-12, 0}}));
  connect(triangleAndRamp.triangle, windturbine.v) annotation(Line(points = {{-59, 6}, {-46, 6}, {-46, 8.88178e-16}, {-33, 8.88178e-16}}, color = {0, 0, 127}));
  connect(triangleAndRamp.step, windturbine.beta) annotation(Line(points = {{-59, -6}, {-33, -6}}, color = {0, 0, 127}));
  annotation(experiment(StopTime = 1, Interval = 1E-5), Documentation(info = "<html>
<p>
Plot <code>windturbine.cp</code> as a function of <code>windturbine.lambda</code> and scale such way that only positive cp values are displayed. This parametric curves then represent the cp versus lambda for different pitch angles beta.</p>
</html>"));
end CpLambdaWindTurbine;
