within WindPowerPlants.Blocks;
model AngularVelocityController
  "Controller of the angular velocity incorporating tip speed ratio and wind speed"
  parameter WindPowerPlants.Records.TurbineControlData.Generic turbineControlData
    "Wind turbine record"                                                                               annotation(choicesAllMatching = true);
  parameter Modelica.SIunits.Length D = 90 "Diameter of wind turbine";
  parameter Real k = 120 "Controller gain";
  parameter Modelica.SIunits.Time Ti = 25 "Controller time constant";
  parameter Modelica.SIunits.Torque tauRef = 0 "Reference generator torque > 0";
  parameter Real limitMot = 0.05 "Motoring torque limit w.r.t. tauRef";
  parameter Modelica.SIunits.Velocity vMin = 4
    "Minimum wind speed of operation";
  Modelica.Blocks.Interfaces.RealInput v "Wind speed" annotation(Placement(visible = true, transformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput tau "Reference Torque" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Interfaces.RealInput lambda "Tip speed ratio" annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Blocks.AngularVelocity angularVelocity(final D = D) annotation(Placement(transformation(extent = {{-40, -70}, {-20, -50}})));
  Modelica.Blocks.Math.Feedback feedback annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {-80, -30})));
  Modelica.Blocks.Sources.Constant lambdaOpt(final k = turbineControlData.lambdaOpt) annotation(Placement(visible = true, transformation(extent = {{0, -20}, {-20, 0}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant lambdaZero(k = 0) annotation(Placement(visible = true, transformation(origin = {0, 40}, extent = {{0, -20}, {-20, 0}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch annotation(Placement(visible = true, transformation(origin = {-50, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.LessThreshold threshold1(threshold = vMin) annotation(Placement(visible = true, transformation(origin = {20, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.LimPID PID(controllerType = Modelica.Blocks.Types.SimpleController.PI, final k = k, final Ti = Ti, final yMax = limitMot * tauRef, final yMin = -tauRef) annotation(Placement(transformation(extent = {{0, -70}, {20, -50}})));
  Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {100, -80}, extent = {{0, -20}, {-20, 0}}, rotation = 0)));
equation
  connect(threshold1.u, v) annotation(Line(points = {{32, 10}, {40, 10}, {40, -80}, {-80, -80}, {-80, -60}, {-110, -60}}, color = {0, 0, 127}));
  connect(threshold1.y, switch.u2) annotation(Line(points = {{9, 10}, {-38, 10}}, color = {255, 0, 255}));
  connect(switch.y, feedback.u1) annotation(Line(points = {{-61, 10}, {-80, 10}, {-80, -22}}, color = {0, 0, 127}));
  connect(switch.u3, lambdaOpt.y) annotation(Line(points = {{-38, 2}, {-28, 2}, {-28, -10}, {-21, -10}}, color = {0, 0, 127}));
  connect(switch.u1, lambdaZero.y) annotation(Line(points = {{-38, 18}, {-28, 18}, {-28, 30}, {-21, 30}}, color = {0, 0, 127}));
  connect(angularVelocity.v, v) annotation(Line(points = {{-41, -60}, {-110, -60}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(feedback.y, angularVelocity.lambda) annotation(Line(points = {{-80, -39}, {-80, -54}, {-41, -54}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(feedback.u2, lambda) annotation(Line(points = {{-88, -30}, {-100, -30}, {-100, 0}, {-110, 0}, {-110, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(angularVelocity.w, PID.u_s) annotation(Line(points = {{-19, -60}, {-2, -60}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(PID.y, tau) annotation(Line(points = {{21, -60}, {60, -60}, {60, 4.44089e-16}, {110, 4.44089e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(zero.y, PID.u_m) annotation(Line(points = {{79, -90}, {10, -90}, {10, -72}}, color = {0, 0, 127}, smooth = Smooth.None));
  annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent=  {{-100, 100}, {100, -100}}, lineColor=  {0, 0, 127}, fillColor=  {255, 255, 255}, fillPattern=  FillPattern.Solid), Ellipse(extent=  {{-20, 20}, {20, -20}}, lineColor=  {95, 95, 95}, fillColor=  {255, 255, 255}, fillPattern=  FillPattern.Solid), Text(extent=  {{-150, 150}, {150, 110}}, textString=  "%name", lineColor=  {0, 0, 255})}), Documentation(info = "<html>
<p>This model controls the angular velocity <code>w</code> based
on the tip speed ration <code>lambda</code> and wind speed
<code>v</code>. For wind speeds below the cut in wind speed, <code>vMin</code>, zero angular
velocity is controlled. Otherwise, it is intended to control such a way that
<code>lambda</code> is and optimum; see
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Eberhart2015</a>].
</p>
</html>"));
end AngularVelocityController;
