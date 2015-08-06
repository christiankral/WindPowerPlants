within WindPowerPlants.WindSources;

block Rayleigh "Rayleigh wind distributution"
  import Modelica.Constants.pi;
  parameter Modelica.SIunits.Velocity vMean = 5 "Mean velocity";
  parameter Modelica.SIunits.Velocity vMax = 20 "Maximum velocity (v<=vMax)";
  parameter Integer n = 10 "Number of intervals";
  parameter Modelica.SIunits.Time T = 100 "Time period";
  parameter Boolean increaseDecrease = false "If true, altering velocity increase and decrease after one period";
  final parameter Modelica.SIunits.Velocity dv = vMax / n "Velocity increment";
  final parameter Modelica.SIunits.Velocity vDiscrete[n] = array(k * dv for k in 1:n) "Discrete Velocities";
  final parameter Real rayleigh[n] = array(dv * pi / 2 * vDiscrete[k] / vMean ^ 2 * exp(-pi / 4 * vDiscrete[k] ^ 2 / vMean ^ 2) for k in 1:n) "Rayleigh probaility";
  final parameter Real rayleigh_sum = sum(rayleigh) "Sum of all rayleigh probabilities";
  final parameter Real probability[n] = rayleigh / rayleigh_sum "Probabilities of velocities";
  final parameter Modelica.SIunits.Time tDiscrete[n] = probability * T "Discrete durations";
  // Variables
  Integer counter(final start = 0, final fixed = true) "Counter of repeating velocity distribution after time T";
  Integer index(final start = 1, final fixed = true) "Velocity index";
  Integer increment(final start = 1, final fixed = true) "Increment of index";
  Modelica.SIunits.Time tNext(final start = tDiscrete[1], final fixed = true) "Time of next event";
  discrete Modelica.SIunits.Velocity velocity(final start = vDiscrete[1], final fixed = true) "Velocity";
  Modelica.Blocks.Interfaces.RealOutput v "Wind velocity" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
algorithm
  when time >= tNext then
    index := index + increment;
    if index > n then
      if increaseDecrease then
        increment := -1;
        index := n;
      else
        index := 1;
      end if;
      counter := counter + 1;
    end if;
    if index < 1 then
      increment := +1;
      index := 1;
      counter := counter + 1;
    end if;
    velocity := vDiscrete[index];
    tNext := time + tDiscrete[index];
  end when;
  v := velocity;
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, -38}, {-64, -18}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-56, -38}, {-44, 14}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-36, -38}, {-24, 38}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-16, -38}, {-4, 20}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{4, -38}, {16, 2}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{24, -38}, {36, -10}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{44, -38}, {56, -16}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{64, -38}, {76, -22}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Text(extent = {{20, 80}, {80, 20}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, textString = "R"), Line(points = {{-80, -40}, {80, -40}}, color = {0, 0, 255}, smooth = Smooth.None), Line(points = {{-80, -40}, {-80, 40}, {-86, 40}, {-80, 60}, {-74, 40}, {-80, 40}}, color = {0, 0, 255}, smooth = Smooth.None), Text(origin = {0, 123}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>This block provides a discrete velocity distribution in the time domain according to a Rayleigh distribution</p>
<p><img src=\"modelica://WindPowerPlants/Resources/Images/RayleighFormula.png\"/></p>
<p>where <img src=\"modelica://WindPowerPlants/Resources/Images/vMean.png\"/> is the approximate mean velocity of the distribution. The greater the number of velocity intervals <img src=\"modelica://WindPowerPlants/Resources/Images/n.png\"/> and the greater the maximum velocity, <img src=\"modelica://WindPowerPlants/Resources/Images/vMax.png\"/>, is, the more accurate is the approximation of the mean velocity. The velocity interval is determined by:</p>
<p><img src=\"modelica://WindPowerPlants/Resources/Images/Delta_v.png\"/></p>
<p><br><img src=\"modelica://WindPowerPlants/Resources/Images/Rayleigh.png\"/></p>
<p>The sum of all probabilities <img src=\"modelica://WindPowerPlants/Resources/Images/d.png\"/> is equal to one.</p>
<p>The boolean parameter <code>increaseDecrease</code> indicates wheather</p>
<ul>
<li><code>false</code>: discrete velcocites over time are only increasing in each period <img src=\"modelica://WindPowerPlants/Resources/Images/T.png\"/>, or</li>
<li><code>true</code>: discrete velcocites over time are alternatingly increasing and decreasing, in every other period <img src=\"modelica://WindPowerPlants/Resources/Images/T.png\"/>.</li>
</ul>
</html>"));
end Rayleigh;