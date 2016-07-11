within WindPowerPlants.Components;
model GenericVariableSpeedGeneratorElectrical "Idealized doubly fed induction generator with electrical connector"
  parameter Modelica.SIunits.Inertia J = 0 "Moment of inertia" annotation(Evaluate = true);
  parameter Modelica.SIunits.Voltage VRef = 1 "Reference line to line voltage";
  parameter Modelica.SIunits.Time T = 1E-3 "Internal control time constant";
  Modelica.SIunits.AngularVelocity w = der(flange_a.phi) "Angular rotor velocity";
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(transformation(extent = {{90, -10}, {110, 10}})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug positivePlug annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}})));
  Modelica.Blocks.Interfaces.RealInput tau(unit = "N.m") "Torque to be controlled" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(transformation(origin = {-52, 0}, extent = {{-28, -10}, {-8, 10}})));
  Modelica.Mechanics.Rotational.Sensors.PowerSensor mechanicalPowerSensor annotation(Placement(transformation(origin = {-30, 0}, extent = {{-10, 10}, {10, -10}})));
  Sources.IdealRealPowerConductance idealPower(final VRef = VRef, final T = T) annotation(Placement(transformation(extent = {{-10, 10}, {10, 30}})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor electricalPowerSensor(final m = 3) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {0, 50})));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star star(final m = 3) annotation(Placement(transformation(extent = {{-50, 40}, {-70, 60}})));
  Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground ground annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {-90, 50})));
  Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-30, 70})));
  Modelica.Blocks.Interfaces.RealOutput power(unit = "W") "Real power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-60, 110})));
  Modelica.Blocks.Interfaces.RealOutput reactivePower(unit = "var") "Reactive power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {60, 110})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(w(fixed = true, start = 0.2), final J = J) annotation(Placement(transformation(extent = {{40, -10}, {60, 10}})));
equation
  connect(tau, torque.tau) annotation(Line(points = {{-120, 0}, {-82, 0}}, color = {0, 0, 127}));
  connect(torque.flange, mechanicalPowerSensor.flange_a) annotation(Line(points = {{-60, 0}, {-40, 0}}, color = {0, 0, 0}));
  connect(mechanicalPowerSensor.power, idealPower.power) annotation(Line(points = {{-38, 11}, {-38, 20}, {-12, 20}}, color = {0, 0, 127}));
  connect(positivePlug, electricalPowerSensor.currentP) annotation(Line(points = {{0, 100}, {2.66454e-15, 100}, {2.66454e-15, 60}}, color = {85, 170, 255}));
  connect(electricalPowerSensor.currentP, electricalPowerSensor.voltageP) annotation(Line(points = {{0, 60}, {10, 60}, {10, 50}}, color = {85, 170, 255}));
  connect(star.plug_p, electricalPowerSensor.voltageN) annotation(Line(points = {{-50, 50}, {-10, 50}}, color = {85, 170, 255}));
  connect(ground.pin, star.pin_n) annotation(Line(points = {{-80, 50}, {-70, 50}}, color = {85, 170, 255}));
  connect(electricalPowerSensor.currentN, idealPower.positivePlug) annotation(Line(points = {{0, 40}, {0, 30}, {6.66134e-16, 30}}, color = {85, 170, 255}));
  connect(complexToReal.u, electricalPowerSensor.y) annotation(Line(points = {{-30, 58}, {-11, 58}}, color = {85, 170, 255}));
  connect(complexToReal.re, power) annotation(Line(points = {{-36, 82}, {-36, 90}, {-60, 90}, {-60, 110}}, color = {0, 0, 127}));
  connect(complexToReal.im, reactivePower) annotation(Line(points = {{-24, 82}, {-24, 90}, {60, 90}, {60, 110}}, color = {0, 0, 127}));
  connect(mechanicalPowerSensor.flange_b, inertia.flange_a) annotation(Line(points = {{-20, 0}, {40, 0}}, color = {0, 0, 0}));
  connect(inertia.flange_b, flange_a) annotation(Line(points = {{60, 0}, {100, 0}}, color = {0, 0, 0}));
  annotation(defaultComponentName = "generator", Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-50, 60}, {70, -60}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {213, 255, 170}), Rectangle(extent = {{-50, 60}, {-70, -60}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {128, 128, 128}), Rectangle(extent = {{70, 10}, {90, -10}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {95, 95, 95}), Rectangle(extent = {{-50, 70}, {30, 50}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-60, -90}, {-50, -90}, {-20, -20}, {30, -20}, {60, -90}, {70, -90}, {70, -100}, {-60, -100}, {-60, -90}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
<p>Variable speed generator with 100% efficiency and no loss.
The mechanical power is directly converted into an equivalent three phase electric power.
The generator has a torque input which is directly converted into a
physical signal of the rotational connector.
</p>
</html>"));
end GenericVariableSpeedGeneratorElectrical;
