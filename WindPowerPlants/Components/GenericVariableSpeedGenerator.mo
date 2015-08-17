within WindPowerPlants.Components;

model GenericVariableSpeedGenerator "Ideal doubly fed induction generator without electrical connector"
  parameter Modelica.SIunits.Inertia J = 0 "Moment of inertia" annotation(Evaluate = true);
  Modelica.SIunits.AngularVelocity w = der(flange_a.phi) "Angular rotor velocity";
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(transformation(extent = {{90, -10}, {110, 10}})));
  Modelica.Blocks.Interfaces.RealInput tau "Torque to be controlled" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {-52, 0}, extent = {{-28, -10}, {-8, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.PowerSensor mechanicalPowerSensor annotation(Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(w(fixed = true, start = 0.2), final J = J) annotation(Placement(transformation(extent = {{40, -10}, {60, 10}})));
  Modelica.Blocks.Interfaces.RealOutput power "Real power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-60, 110}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-60, 110})));
equation
  connect(tau, torque.tau) annotation(Line(points = {{-120, 0}, {-82, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(torque.flange, mechanicalPowerSensor.flange_a) annotation(Line(points = {{-60, 0}, {-52, 0}, {-52, -6.66134e-16}, {-40, -6.66134e-16}}, color = {0, 0, 0}, smooth = Smooth.None));
  connect(inertia.flange_b, flange_a) annotation(Line(points = {{60, 0}, {76, 0}, {76, 4.44089e-16}, {100, 4.44089e-16}}, color = {0, 0, 0}, smooth = Smooth.None));
  connect(mechanicalPowerSensor.flange_b, inertia.flange_a) annotation(Line(points = {{-20, -6.66134e-16}, {10, -6.66134e-16}, {10, 0}, {40, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
  connect(mechanicalPowerSensor.power, power) annotation(Line(points = {{-38, 11}, {-38, 40}, {-60, 40}, {-60, 110}}, color = {0, 0, 127}, smooth = Smooth.None));
  annotation(defaultComponentName = "generator", Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-50, 60}, {70, -60}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {213, 255, 170}), Rectangle(extent = {{-50, 60}, {-70, -60}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {128, 128, 128}), Rectangle(extent = {{70, 10}, {90, -10}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {95, 95, 95}), Rectangle(extent = {{-50, 70}, {30, 50}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-60, -90}, {-50, -90}, {-20, -20}, {30, -20}, {60, -90}, {70, -90}, {70, -100}, {-60, -100}, {-60, -90}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>Variable speed generator with 100% efficiency and no loss.
The generator has a torque input which is directly converted into a
physical signal of the rotational connector.
</p>
</html>"));
end GenericVariableSpeedGenerator;
