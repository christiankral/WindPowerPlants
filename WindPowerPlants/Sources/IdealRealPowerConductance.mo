within WindPowerPlants.Sources;
model IdealRealPowerConductance "Ideal three phase power source or sink based on controlled conductance"
  final parameter Integer m = 3 "Number of phases";
  parameter Modelica.SIunits.Voltage VRef = 1 "Reference line to line voltage";
  parameter Modelica.SIunits.Time T = 1E-3 "Internal control time constant";
  Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug positivePlug annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
  Modelica.Blocks.Interfaces.RealInput power(unit = "W") "Real power to be controlled" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}), iconTransformation(extent = {{-140, -20}, {-100, 20}})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor variableCurrentSource(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {40, 0})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star star(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {40, -30})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor powerSensor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {40, 50})));
  Modelica.Blocks.Math.Feedback feedback annotation(Placement(transformation(extent = {{-80, 10}, {-60, -10}})));
  Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal annotation(Placement(transformation(extent = {{-20, 60}, {-40, 80}})));
  Modelica.Blocks.Continuous.Integrator integrator(k = 3 / VRef / VRef / T) annotation(Placement(transformation(extent = {{-48, -10}, {-28, 10}})));
  Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground ground annotation(Placement(transformation(extent = {{30, -70}, {50, -50}})));
  Modelica.Blocks.Routing.Replicator replicator(final nout = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
equation
  connect(powerSensor.currentP, powerSensor.voltageP) annotation(Line(points = {{40, 60}, {50, 60}, {50, 50}}, color = {85, 170, 255}));
  connect(powerSensor.voltageN, star.plug_p) annotation(Line(points = {{30, 50}, {20, 50}, {20, -20}, {40, -20}}, color = {85, 170, 255}));
  connect(variableCurrentSource.plug_p, star.plug_p) annotation(Line(points = {{40, -10}, {40, -20}}, color = {85, 170, 255}));
  connect(complexToReal.u, powerSensor.y) annotation(Line(points = {{-18, 70}, {0, 70}, {0, 58}, {29, 58}}, color = {85, 170, 255}));
  connect(complexToReal.re, feedback.u2) annotation(Line(points = {{-42, 76}, {-70, 76}, {-70, 8}}, color = {0, 0, 127}));
  connect(feedback.y, integrator.u) annotation(Line(points = {{-61, 0}, {-50, 0}}, color = {0, 0, 127}));
  connect(power, feedback.u1) annotation(Line(points = {{-120, 8.88178e-16}, {-90, 8.88178e-16}, {-90, 0}, {-78, 0}}, color = {0, 0, 127}));
  connect(powerSensor.currentP, positivePlug) annotation(Line(points = {{40, 60}, {40, 100}, {0, 100}}, color = {85, 170, 255}));
  connect(powerSensor.currentN, variableCurrentSource.plug_n) annotation(Line(points = {{40, 40}, {40, 10}}, color = {85, 170, 255}));
  connect(star.pin_n, ground.pin) annotation(Line(points = {{40, -40}, {40, -50}}, color = {85, 170, 255}));
  connect(integrator.y, replicator.u) annotation(Line(points = {{-27, 0}, {-12, 0}}, color = {0, 0, 127}));
  connect(replicator.y, variableCurrentSource.G_ref) annotation(Line(points = {{11, 0}, {29, 0}}, color = {0, 0, 127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Ellipse(extent = {{-60, 60}, {60, -60}}, lineColor = {0, 0, 255}), Line(points = {{0, 90}, {0, 88}, {0, 60}}, color = {0, 0, 255}), Text(extent = {{-40, 40}, {40, -40}}, lineColor = {0, 0, 255}, textString = "P"), Ellipse(extent = {{-80, 80}, {80, -80}}, lineColor = {0, 0, 255})}), Documentation(info = "<html>
<p>
The ideal real power source is based on a controlled variable conductor.
The reference voltage and the time constant are required to scale the
control behavior of the power source for different reference voltages.
</p>
</html>"));
end IdealRealPowerConductance;
