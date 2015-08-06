within WindPowerPlants.Blocks;

model TorqueLimiter
  parameter Modelica.SIunits.Torque tauRef "Reference torque";
  parameter Modelica.SIunits.AngularVelocity wRef "Reference angular velocity";
  parameter Real linear = 0.02 "Linear range for w < wRef*linear";
  Modelica.Blocks.Interfaces.RealInput tau "Torque" annotation(Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput tauLimited "Limited Torque" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Interfaces.RealInput w "rotational speed" annotation(Placement(visible = true, transformation(origin = {0, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 270), iconTransformation(origin = {0, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
equation
  tauLimited = if w > 0 and w < linear * wRef then if tau < 0 then tau * abs(w) / (linear * wRef) else tau elseif w <= 0 then if tau < 0 then tau * abs(w) / wRef else tau else tau;
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, -60}, {-40, -20}, {40, -20}, {80, -60}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{0, 102}, {0, 20}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{-80, 60}, {-40, 20}, {40, 20}, {80, 60}}, color = {0, 0, 0}, smooth = Smooth.None)}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>
The torque output of the angular velocity control is limited
to avoid significant dynamics around zero speed and
for negative speeds. Since the electric machine is operated
as generator, the mechanical power is negative.
The generator is operated at positive angular
speed <code>w</code> and thus torque <code>tau</code> is negative. Torque limitation,
however, is implemented as function of speed.
The characteristic of the torque limiter is shown the figure below
for the input torque <code>tau = -10kNm</code> and a torque limit of
<code>tauRef = 10kNm</code>. However, In the investigated case the reference
speed <code>wRef = 50*pi rad/s</code>. For positive speeds
greater than <code>linear = 2%</code> of the reference speed the torque is not
limited. The range between zero angular speed and 2%
of the reference speed torque is limited by the steep linear
curve shown in the figure below. In the negative speed range -
which shall never be reached - torque is limited linearly
towards the negative reference angular velocity.
</p>
<P>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <tr>
    <td>
      <img src=\"modelica://WindPowerPlants/Resources/Images/torquelimiter.png\"
           alt=\"torquelimiter.png\">
    </td>
  </tr>
  <caption align=\"bottom\">Torque limitation as function of angular velocity</caption>
</table>
</p>
</html>"));
end TorqueLimiter;