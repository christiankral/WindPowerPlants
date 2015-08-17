within WindPowerPlants.MSL_322;

model PowerSensor "Power sensor"
  extends Modelica.Icons.RotationalSensor;
  parameter Integer m(min = 1) = 3 "number of phases";
  Modelica.SIunits.AngularVelocity omega = der(currentP.reference.gamma);
  Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug currentP(final m = m) annotation(Placement(transformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug currentN(final m = m) annotation(Placement(transformation(extent = {{90, -10}, {110, 10}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug voltageP(final m = m) annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug voltageN(final m = m) annotation(Placement(transformation(extent = {{-10, -110}, {10, -90}}, rotation = 0)));
  Modelica.ComplexBlocks.Interfaces.ComplexOutput y annotation(Placement(transformation(origin = {-80, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p plugToPinsCurrentP(final m = m) annotation(Placement(transformation(extent = {{-80, -10}, {-60, 10}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p plugToPinsVoltageP(final m = m) annotation(Placement(transformation(origin = {0, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPinsCurrentN(final m = m) annotation(Placement(transformation(extent = {{80, -10}, {60, 10}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPinsVoltageN(final m = m) annotation(Placement(transformation(origin = {0, -70}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
  Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor powerSensor[m] annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.ComplexBlocks.ComplexMath.Sum sum(final nin = m) annotation(Placement(transformation(origin = {-80, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
equation
  connect(plugToPinsCurrentP.plug_p, currentP) annotation(Line(points = {{-72, 0}, {-79, 0}, {-86, 0}, {-100, 0}}, color = {85, 170, 255}));
  connect(currentN, plugToPinsCurrentN.plug_n) annotation(Line(points = {{100, 0}, {93, 0}, {86, 0}, {72, 0}}, color = {85, 170, 255}));
  connect(voltageP, plugToPinsVoltageP.plug_p) annotation(Line(points = {{0, 100}, {0, 100}, {0, 72}}, color = {85, 170, 255}));
  connect(plugToPinsVoltageN.plug_n, voltageN) annotation(Line(points = {{0, -72}, {0, -72}, {0, -100}}, color = {85, 170, 255}));
  connect(plugToPinsCurrentP.pin_p, powerSensor.currentP) annotation(Line(points = {{-68, 0}, {-53.5, 0}, {-53.5, 0}, {-39, 0}, {-39, 0}, {-10, 0}}, color = {85, 170, 255}));
  connect(powerSensor.currentN, plugToPinsCurrentN.pin_n) annotation(Line(points = {{10, 0}, {24.5, 0}, {24.5, 0}, {39, 0}, {39, 0}, {68, 0}}, color = {85, 170, 255}));
  connect(powerSensor.voltageP, plugToPinsVoltageP.pin_p) annotation(Line(points = {{0, 10}, {0, 10}, {0, 68}, {0, 68}}, color = {85, 170, 255}));
  connect(powerSensor.voltageN, plugToPinsVoltageN.pin_n) annotation(Line(points = {{0, -10}, {0, -10}, {0, -68}, {0, -68}}, color = {85, 170, 255}));
  connect(powerSensor.y, sum.u) annotation(Line(points = {{-8, -11}, {-8, -40}, {-80, -40}, {-80, -58}}, color = {85, 170, 255}));
  connect(sum.y, y) annotation(Line(points = {{-80, -81}, {-80, -110}}, color = {85, 170, 255}));
  annotation(Icon(graphics = {Line(points = {{0, 100}, {0, 70}}, color = {0, 0, 255}), Line(points = {{0, -70}, {0, -100}}, color = {0, 0, 255}), Text(extent = {{-29, -70}, {30, -11}}, textString = "P"), Line(points = {{-80, -100}, {-80, 0}}, color = {85, 170, 255}), Text(textColor = {0, 0, 255}, extent = {{-100, 110}, {100, 150}}, textString = "%name"), Line(points = {{-100, 0}, {100, 0}}, color = {0, 0, 255})}), Documentation(info = "<html>

<p>
This sensor can be used to measure <i>m</i> complex apparent power values, using <i>m</i>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor\">single phase PowerSensors</a>.
</p>

<h4>See also</h4>

<p>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor\">SinglePhase.PowerSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor\">PotentialSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor\">VoltageSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor\">CurrentSensor</a>
</p>

</html>"), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics));
end PowerSensor;
