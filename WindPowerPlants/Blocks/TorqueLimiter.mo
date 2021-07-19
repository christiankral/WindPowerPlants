within WindPowerPlants.Blocks;
model TorqueLimiter
  parameter Modelica.Units.SI.Torque tauRef "Reference torque";
  parameter Modelica.Units.SI.AngularVelocity wRef "Reference angular velocity";
  parameter Real linear = 0.02 "Linear range for w < wRef*linear";
  parameter Real limit = 0.02 "Relative torque limit w.r.t. tauRef for zero speed";
  Modelica.Blocks.Interfaces.RealInput tau(unit = "N.m") "Torque" annotation(Placement(transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput tauLimited(unit = "N.m") "Limited Torque" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Interfaces.RealInput w(unit = "rad/s") "rotational speed" annotation(Placement(transformation(origin = {0, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 270), iconTransformation(origin = {0, 120}, extent = {{-20, -20}, {20, 20}}, rotation = 270)));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Tables.CombiTable1Dv upperLimit(smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments,
      table=[-2*wRef,tauRef; -linear*wRef,tauRef; -linear*limit*wRef,limit*
        tauRef; limit*wRef,limit*tauRef; wRef,tauRef; 2*wRef,tauRef])
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-30,30})));
  Modelica.Blocks.Tables.CombiTable1Dv lowerLimit(smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments,
      table=[-2*wRef,-tauRef; -wRef,-tauRef; -limit*wRef,-limit*tauRef; linear*
        limit*wRef,-limit*tauRef; linear*wRef,-tauRef; 2*wRef,-tauRef])
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-60,30})));
equation
  connect(tau, variableLimiter.u) annotation(Line(points = {{-110, 0}, {-12, 0}, {-12, 0}}, color = {0, 0, 127}));
  connect(variableLimiter.y, tauLimited) annotation(Line(points = {{11, 0}, {110, 0}, {110, 0}}, color = {0, 0, 127}));
  connect(upperLimit.u[1], w) annotation(Line(points = {{-30, 42}, {-30, 42}, {-30, 80}, {0, 80}, {0, 110}}, color = {0, 0, 127}));
  connect(upperLimit.y[1], variableLimiter.limit1) annotation(Line(points = {{-30, 19}, {-30, 19}, {-30, 8}, {-12, 8}}, color = {0, 0, 127}));
  connect(lowerLimit.u[1], w) annotation(Line(points = {{-60, 42}, {-60, 42}, {-60, 80}, {4.44089e-16, 80}, {4.44089e-16, 110}}, color = {0, 0, 127}));
  connect(lowerLimit.y[1], variableLimiter.limit2) annotation(Line(points = {{-60, 19}, {-60, 19}, {-60, -2}, {-60, -8}, {-12, -8}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, -60}, {-40, -20}, {40, -20}, {80, -60}}, color = {0, 0, 0}), Line(points = {{0, 102}, {0, 20}}, color = {0, 0, 0}), Line(points = {{-80, 60}, {-40, 20}, {40, 20}, {80, 60}}, color = {0, 0, 0})}), Documentation(info = "<html>
<p>
The torque output of the angular velocity control is limited
to avoid significant dynamics around zero speed and
for negative speeds. Since the electric machine is operated
as generator, the mechanical power is negative.
The generator is operated at positive angular
speed <code>w</code> and thus torque <code>tau</code> is negative. Torque limitation,
however, is implemented as function of speed.
The characteristic of the torque limiter is shown the figure below
for
<code>tauRef = 10kNm</code>. However, In the investigated case the reference
speed <code>wRef = 50*pi rad/s</code>. For positive speeds
greater than <code>linear = 2%</code> of the reference speed the torque is not
limited. The range between zero angular speed and 2%
of the reference speed torque is limited by the steep linear
curve shown in the figure below. In the negative speed range -
which shall never be reached - torque is limited linearly
towards the negative reference angular velocity. In the vicinity of zero speed
torque is limited by <code>limit = 2%</code> with respect to <code>tauRef</code>.
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
