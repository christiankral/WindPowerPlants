within WindPowerPlants.Sources;
model IdealRealPower "Ideal three phase power source or sink"
  final parameter Integer m = 3 "Number of phases";
  parameter Modelica.SIunits.Voltage VRef = 1 "Reference line to line voltage";
  parameter Modelica.SIunits.Time T = 1E-3 "Internal control time constant";
  Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug positivePlug annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
  Modelica.Blocks.Interfaces.RealInput power(unit = "W") "Real power to be controlled" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}), iconTransformation(extent = {{-140, -20}, {-100, 20}})));
  VariableUnrootedCurrentSource variableCurrentSource(final m=m) annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={40,40})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star star(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {40, 10})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor powerSensor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {40, 70})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor potentialSensor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {70, 90})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Blocks.ToSpacePhasor toSpacePhasor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {70, 50})));
  Modelica.Blocks.Math.Feedback feedback annotation(Placement(transformation(extent = {{-80, -30}, {-60, -50}})));
  Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal annotation(Placement(transformation(extent = {{0, 60}, {-20, 80}})));
  Modelica.Blocks.Continuous.Integrator integrator(k = sqrt(3) / VRef / T) annotation(Placement(transformation(extent = {{-48, -50}, {-28, -30}})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Blocks.FromSpacePhasor fromSpacePhasor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, 20})));
  Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolar fromPolar annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -10})));
  Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolar toPolar annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {70, 20})));
  Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground ground annotation(Placement(transformation(extent = {{30, -30}, {50, -10}})));
equation
  connect(powerSensor.currentP, powerSensor.voltageP) annotation(Line(points = {{40, 80}, {50, 80}, {50, 70}}, color = {85, 170, 255}));
  connect(powerSensor.voltageN, star.plug_p) annotation(Line(points = {{30, 70}, {20, 70}, {20, 20}, {40, 20}}, color = {85, 170, 255}));
  connect(potentialSensor.plug_p, positivePlug) annotation(Line(points = {{70, 100}, {4.44089e-16, 100}}, color = {85, 170, 255}));
  connect(potentialSensor.y, toSpacePhasor.u) annotation(Line(points = {{70, 79}, {70, 62}}, color = {85, 170, 255}));
  connect(complexToReal.u, powerSensor.y) annotation(Line(points = {{2, 70}, {12, 70}, {12, 78}, {29, 78}}, color = {85, 170, 255}));
  connect(complexToReal.re, feedback.u2) annotation(Line(points = {{-22, 76}, {-70, 76}, {-70, -32}}, color = {0, 0, 127}));
  connect(feedback.y, integrator.u) annotation(Line(points = {{-61, -40}, {-50, -40}}, color = {0, 0, 127}));
  connect(fromSpacePhasor.y, variableCurrentSource.I) annotation(Line(points = {{1.33227e-15, 31}, {1.33227e-15, 40}, {30, 40}}, color = {85, 170, 255}));
  connect(fromSpacePhasor.u, fromPolar.y) annotation(Line(points = {{0, 8}, {0, 1}}, color = {0, 0, 127}));
  connect(integrator.y, fromPolar.u[1]) annotation(Line(points = {{-27, -40}, {1, -40}, {1, -22}}, color = {0, 0, 127}));
  connect(toSpacePhasor.y, toPolar.u) annotation(Line(points = {{70, 39}, {70, 32}}, color = {0, 0, 127}));
  connect(toPolar.y[2], fromPolar.u[2]) annotation(Line(points = {{70.5, 9}, {70.5, -40}, {-2, -40}, {-2, -22}, {-1, -22}}, color = {0, 0, 127}));
  connect(power, feedback.u1) annotation(Line(points = {{-120, 0}, {-90, 0}, {-90, -40}, {-78, -40}}, color = {0, 0, 127}));
  connect(powerSensor.currentP, positivePlug) annotation(Line(points = {{40, 80}, {40, 100}, {0, 100}}, color = {85, 170, 255}));
  connect(star.pin_n, ground.pin) annotation(Line(points = {{40, 1.33227e-15}, {40, -10}}, color = {85, 170, 255}));
  connect(powerSensor.currentN, variableCurrentSource.plug_p) annotation(Line(points = {{40, 60}, {40, 50}}, color = {85, 170, 255}));
  connect(variableCurrentSource.plug_n, star.plug_p) annotation(Line(points = {{40, 30}, {40, 20}}, color = {85, 170, 255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Ellipse(extent = {{-60, 60}, {60, -60}}, lineColor = {0, 0, 255}), Line(points = {{0, 90}, {0, 88}, {0, 60}}, color = {0, 0, 255}), Text(extent = {{-40, 40}, {40, -40}}, lineColor = {0, 0, 255}, textString = "P")}), Documentation(info = "<html>
<p>
The ideal real power source is based on a space phasor approach,
where the current and voltage space phasor are aligned.
The reference voltage and the time constant are required to scale the
control behavior of the power source for different reference voltages.
</p>
</html>"));
end IdealRealPower;
