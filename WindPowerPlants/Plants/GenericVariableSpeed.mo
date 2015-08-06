within WindPowerPlants.Plants;

model GenericVariableSpeed "Ideal wind power plant with variable speed generator"
  extends Interfaces.BasePlant;
  Modelica.SIunits.AngularVelocity wGenerator = der(generator.flange_a.phi) "Angular velocity of generator";
  Modelica.SIunits.AngularVelocity wTurbine = der(windturbine.flange_a.phi) "Angular velocity of turbine";
  Components.PitchWindTurbineControlled windturbine(final rho = rho, final D = D, final powerMax = powerMax, final turbineData = turbineData, final turbineControlData = turbineControlData, final T = T, final phi(start = 0, fixed = true)) annotation(Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
  Blocks.AngularVelocityController angularVelocityControl(final turbineControlData = turbineControlData, final D = D, final k = k, final Ti = Ti, final tauRef = tauRef, final limitMot = limitMot, final vMin = vMin) annotation(Placement(transformation(extent = {{-40, -60}, {-20, -40}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(final J = JTurbine) annotation(Placement(transformation(extent = {{-30, -10}, {-10, 10}})));
  Components.GenericVariableSpeedGenerator generator(final J = JGenerator) "Generic variable speed generator" annotation(Placement(transformation(extent = {{60, -10}, {40, 10}})));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear(final ratio = ratio) annotation(Placement(transformation(extent = {{20, -10}, {0, 10}})));
  Blocks.TorqueLimiter torqueLimiter(tauRef = tauRef, wRef = wRef) annotation(Placement(transformation(extent = {{20, -60}, {40, -40}})));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {30, -20})));
equation
  connect(windturbine.lambda, angularVelocityControl.lambda) annotation(Line(points = {{-56, -11}, {-56, -50}, {-41, -50}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(windturbine.flange_a, inertia.flange_a) annotation(Line(points = {{-40, 0}, {-30, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
  connect(windturbine.v, v) annotation(Line(points = {{-61, 0}, {-120, 0}, {-120, 8.88178e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(angularVelocityControl.v, v) annotation(Line(points = {{-41, -56}, {-80, -56}, {-80, 8.88178e-16}, {-120, 8.88178e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(generator.power, power) annotation(Line(points = {{56, 11}, {56, 60}, {60, 60}, {60, 110}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(inertia.flange_b, idealGear.flange_b) annotation(Line(points = {{-10, 0}, {0, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
  connect(speedSensor.w, torqueLimiter.w) annotation(Line(points = {{30, -31}, {30, -39}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(idealGear.flange_a, generator.flange_a) annotation(Line(points = {{20, 6.66134e-16}, {30, 6.66134e-16}, {30, 0}, {40, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
  connect(angularVelocityControl.tau, torqueLimiter.tau) annotation(Line(points = {{-19, -50}, {18, -50}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(torqueLimiter.tauLimited, generator.tau) annotation(Line(points = {{41, -50}, {80, -50}, {80, 0}, {62, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(speedSensor.flange, generator.flange_a) annotation(Line(points = {{30, -10}, {30, 0}, {40, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
  annotation(defaultComponentName = "plant", Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>This is a generic wind turbine model with variable speed generator and pitch control.</p>
</html>"));
end GenericVariableSpeed;