within WindPowerPlants.MSL_322;

model ReferenceSensor "Sensor of reference angle gamma"
  extends
    Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor;
  Modelica.Blocks.Interfaces.RealOutput y "Reference angle" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
equation
  y = plug_p.reference.gamma;
  plug_p.pin.i = fill(Complex(0), m);
  annotation(Icon(graphics = {Text(extent = {{60, -60}, {-60, -30}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid, textString = "ref")}));
end ReferenceSensor;
