within WindPowerPlants.Components;

model PitchWindTurbineControlled "Wind turbine with controlled pitch angle"
  extends WindPowerPlants.Interfaces.BaseWindTurbine;
  parameter Boolean limitStart = false "Starting value indicating power limit";
  parameter WindPowerPlants.Records.TurbineControlData.Generic turbineControlData "Turbine control" annotation(choicesAllMatching = true);
  parameter Modelica.SIunits.Time T = 1E-3 "Power limit control time constant";
  Modelica.Blocks.Interfaces.BooleanOutput limit "True if power limit is reached" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {0, -110})));
  PitchWindTurbine turbine(final rho = rho, final D = D, final powerMax = powerMax, final turbineData = turbineData, final limitStart = limitStart) annotation(Placement(transformation(extent = {{60, 50}, {80, 70}})));
  Modelica.Blocks.Logical.Switch switch1 annotation(Placement(transformation(extent = {{-60, -50}, {-40, -70}})));
  Modelica.Blocks.Sources.RealExpression powerDeviation(final y = turbine.power / powerMax - 1) annotation(Placement(transformation(extent = {{-100, -90}, {-80, -70}})));
  Modelica.Blocks.Sources.Constant zero(final k = 0) annotation(Placement(transformation(extent = {{-100, -60}, {-80, -40}})));
  Modelica.Blocks.Continuous.LimIntegrator limIntegrator(final k = 1 / T, final outMax = turbineControlData.betaMax, final outMin = turbineControlData.betaMin) annotation(Placement(transformation(extent = {{-20, -70}, {0, -50}})));
  Modelica.Blocks.Logical.Switch switch2 annotation(Placement(transformation(extent = {{20, -40}, {40, -60}})));
  Blocks.TurbineControlVal turbineControlVal(final turbineControlData = turbineControlData) annotation(Placement(transformation(extent = {{-20, -40}, {0, -20}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(final uMax = turbineControlData.betaMax, final uMin = turbineControlData.betaMin) annotation(Placement(transformation(extent = {{10, 10}, {-10, -10}}, rotation = 270, origin = {50, -30})));
  Modelica.Blocks.Interfaces.RealOutput lambda "Tip speed ratio" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {-60, -110})));
  Modelica.Blocks.Interfaces.RealOutput w "Angular velocity of flange" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {60, -110})));
  Modelica.Blocks.Continuous.FirstOrder slewRateLimiter(final initType = Modelica.Blocks.Types.Init.InitialState, final y_start = 0, final k = 1, final T = 1) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {50, 10})));
equation
  connect(v, turbine.v) annotation(Line(points = {{-110, 4.44089e-16}, {-70, 4.44089e-16}, {-70, 60}, {59, 60}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(turbine.flange_a, flange_a) annotation(Line(points = {{80, 60}, {100, 60}, {100, 4.44089e-16}}, color = {0, 0, 0}, smooth = Smooth.None));
  connect(turbine.limit, switch1.u2) annotation(Line(points = {{70, 49}, {70, -10}, {-70, -10}, {-70, -60}, {-62, -60}}, color = {255, 0, 255}, smooth = Smooth.None));
  connect(powerDeviation.y, switch1.u1) annotation(Line(points = {{-79, -80}, {-74, -80}, {-74, -68}, {-62, -68}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(zero.y, switch1.u3) annotation(Line(points = {{-79, -50}, {-74, -50}, {-74, -52}, {-62, -52}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(switch1.y, limIntegrator.u) annotation(Line(points = {{-39, -60}, {-22, -60}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(turbine.limit, switch2.u2) annotation(Line(points = {{70, 49}, {70, -10}, {12, -10}, {12, -50}, {18, -50}}, color = {255, 0, 255}, smooth = Smooth.None));
  connect(limIntegrator.y, switch2.u1) annotation(Line(points = {{1, -60}, {8, -60}, {8, -58}, {18, -58}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(turbineControlVal.beta, switch2.u3) annotation(Line(points = {{1, -30}, {8, -30}, {8, -42}, {18, -42}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(turbine.limit, limit) annotation(Line(points = {{70, 49}, {70, -80}, {4.44089e-16, -80}, {4.44089e-16, -110}}, color = {255, 0, 255}, smooth = Smooth.None));
  connect(limiter.u, switch2.y) annotation(Line(points = {{50, -42}, {50, -50}, {41, -50}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(turbine.w, w) annotation(Line(points = {{76, 49}, {76, -90}, {60, -90}, {60, -110}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(turbine.lambda, turbineControlVal.lambda) annotation(Line(points = {{64, 49}, {64, 40}, {-30, 40}, {-30, -30}, {-22, -30}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(turbine.lambda, lambda) annotation(Line(points = {{64, 49}, {64, 40}, {-30, 40}, {-30, -90}, {-60, -90}, {-60, -110}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(limiter.y, slewRateLimiter.u) annotation(Line(points = {{50, -19}, {50, -2}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(slewRateLimiter.y, turbine.beta) annotation(Line(points = {{50, 21}, {50, 54}, {59, 54}}, color = {0, 0, 127}, smooth = Smooth.None));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), Documentation(info = "<html>
<p>The controlled wind turbine model uses the optimal beta to achieve the optimum power coefficient cp.
In the power limiting range the pitch angle is controlled such way that the maximum power is not exceeded.
The model is based on
<a href=\"modelica://WindPowerPlants.Components.PitchWindTurbine\">PitchWindTurbine</a>.
</p>
<p>In a future version of this model the slew rate limiter will be improved. 
For backwards compatibility reasons the parameters of the slew rate limiter are currently not available.</p>.
</html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Line(origin = {-59.6474, -0.17987}, points = {{-0.706547, 0.533853}, {-20.3526, 80.1799}, {-0.3526, 100.18}, {19.6474, 80.1799}, {-20.3526, -79.8201}, {-0.3526, -99.8201}, {21.6474, -79.8201}, {0.00141724, 0.179871}}), Ellipse(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 10}, {-60, -10}}, endAngle = 360), Rectangle(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-80, 10}, {100, -10}}), Text(origin = {0, 121}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name"), Line(points = {{60, -100}, {60, -20}}, color = {0, 0, 127}, smooth = Smooth.None), Line(points = {{40, -20}, {80, -20}}, color = {0, 0, 127}, smooth = Smooth.None), Line(points = {{40, 20}, {80, 20}}, color = {0, 0, 127}, smooth = Smooth.None), Line(points = {{0, 40}, {0, -100}}, color = {255, 0, 255}, smooth = Smooth.None), Line(points = {{-40, 20}, {-38, 22}, {20, 80}, {80, 80}}, color = {255, 0, 255}, smooth = Smooth.None)}));
end PitchWindTurbineControlled;