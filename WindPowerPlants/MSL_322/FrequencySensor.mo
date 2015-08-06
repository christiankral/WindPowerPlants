within WindPowerPlants.MSL_322;

model FrequencySensor "Frequency sensor"
  extends Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor;
  Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor frequencySensor annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p plugToPin_p(final m = m, final k = 1) annotation(Placement(transformation(extent = {{-80, -10}, {-60, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
equation
  connect(plug_p, plugToPin_p.plug_p) annotation(Line(points = {{-100, 0}, {-72, 0}}, color = {85, 170, 255}, smooth = Smooth.None));
  connect(plugToPin_p.pin_p, frequencySensor.pin) annotation(Line(points = {{-68, 0}, {-10, 0}}, color = {85, 170, 255}, smooth = Smooth.None));
  connect(frequencySensor.y, y) annotation(Line(points = {{11, 0}, {110, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
  annotation(Icon(graphics = {Line(points = {{70, 0}, {80, 0}, {90, 0}, {100, 0}}, color = {0, 0, 127}), Text(extent = {{-29, -11}, {30, -70}}, lineColor = {0, 0, 0}, textString = "f")}), Documentation(info = "<html>

<p>
This sensor can be used to measure the frequency of the reference system, using <i>1</i>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor\">single phase FrequencySensor</a>.
</p>

<h4>See also</h4>

<p>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor\">SinglePhase.FrequencySensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor\">PotentialSensor</a>
</p>

</html>"));
end FrequencySensor;