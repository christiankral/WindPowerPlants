within WindPowerPlants.Plants;
model GenericVariableSpeedElectrical "Ideal wind power plant with variable speed generator and electrical connector"
  extends Interfaces.BasePlant;
  parameter Modelica.SIunits.Voltage VRef = 10000 "Reference line to line voltage of generator" annotation(Dialog(tab = "Specification"));
  Modelica.SIunits.AngularVelocity wGenerator = der(generator.flange_a.phi) "Angular velocity of generator";
  Modelica.SIunits.AngularVelocity wTurbine = der(windturbine.flange_a.phi) "Angular velocity of turbine";
  Components.PitchWindTurbineControlled windturbine(final rho = rho, final D = D, final powerMax = powerMax, final turbineData = turbineData, final turbineControlData = turbineControlData, final T = T, final phi(start = 0, fixed = true)) annotation(Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
  Blocks.AngularVelocityController angularVelocityControl(final turbineControlData = turbineControlData, final D = D, final k = k, final Ti = Ti, final tauRef = tauRef, final limitMot = limitMot, final vMin = vMin) annotation(Placement(transformation(extent = {{-40, -60}, {-20, -40}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = JTurbine) annotation(Placement(transformation(extent = {{-30, -10}, {-10, 10}})));
  Components.GenericVariableSpeedGeneratorElectrical generator(J = JGenerator, final VRef = VRef, final T = T) "Generic variable speed generator with mains connector" annotation(Placement(transformation(extent = {{60, -10}, {40, 10}})));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear(ratio = ratio) annotation(Placement(transformation(extent = {{20, -10}, {0, 10}})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug positivePlug(final m = 3) annotation(Placement(transformation(extent = {{-10, -110}, {10, -90}})));
  Modelica.Blocks.Interfaces.RealOutput reactivePower "Reactive power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-60, 110})));
  Blocks.TorqueLimiter torqueLimiter(tauRef = tauRef, wRef = wRef) annotation(Placement(transformation(extent = {{20, -60}, {40, -40}})));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {30, -20})));
equation
  connect(windturbine.lambda, angularVelocityControl.lambda) annotation(Line(points = {{-56, -11}, {-56, -50}, {-41, -50}}, color = {0, 0, 127}));
  connect(windturbine.flange_a, inertia.flange_a) annotation(Line(points = {{-40, 0}, {-30, 0}}, color = {0, 0, 0}));
  connect(windturbine.v, v) annotation(Line(points = {{-61, 0}, {-120, 0}, {-120, 8.88178e-16}}, color = {0, 0, 127}));
  connect(angularVelocityControl.v, v) annotation(Line(points = {{-41, -56}, {-80, -56}, {-80, 8.88178e-16}, {-120, 8.88178e-16}}, color = {0, 0, 127}));
  connect(generator.power, power) annotation(Line(points = {{56, 11}, {56, 60}, {60, 60}, {60, 110}}, color = {0, 0, 127}));
  connect(inertia.flange_b, idealGear.flange_b) annotation(Line(points = {{-10, 0}, {-4.44089e-16, 0}}, color = {0, 0, 0}));
  connect(idealGear.flange_a, generator.flange_a) annotation(Line(points = {{20, 0}, {30, 0}, {30, 4.44089e-16}, {40, 4.44089e-16}}, color = {0, 0, 0}));
  connect(generator.positivePlug, positivePlug) annotation(Line(points = {{50, 10}, {50, 20}, {90, 20}, {90, -80}, {0, -80}, {0, -92}, {4.44089e-16, -92}, {4.44089e-16, -100}}, color = {85, 170, 255}));
  connect(generator.reactivePower, reactivePower) annotation(Line(points = {{44, 11}, {44, 48}, {-60, 48}, {-60, 110}}, color = {0, 0, 127}));
  connect(speedSensor.w, torqueLimiter.w) annotation(Line(points = {{30, -31}, {30, -39}}, color = {0, 0, 127}));
  connect(angularVelocityControl.tau, torqueLimiter.tau) annotation(Line(points = {{-19, -50}, {18, -50}}, color = {0, 0, 127}));
  connect(torqueLimiter.tauLimited, generator.tau) annotation(Line(points = {{41, -50}, {80, -50}, {80, 8.88178e-16}, {62, 8.88178e-16}}, color = {0, 0, 127}));
  connect(speedSensor.flange, generator.flange_a) annotation(Line(points = {{30, -10}, {30, 4.44089e-16}, {40, 4.44089e-16}}, color = {0, 0, 0}));
  annotation(defaultComponentName = "plant", Documentation(info = "<html>
<p>This is a generic wind turbine model with variable speed generator and pitch control. The plant model is equipped with a multi phase quasi static connector to the mains. The generator is controlled such way that the reactive power is equal to zero.</p>
</html>"));
end GenericVariableSpeedElectrical;
