within WindPowerPlants.Interfaces;
partial model BaseWindTurbine
  parameter Modelica.Units.SI.Density rho=1.2 "Mass density of air";
  parameter Modelica.Units.SI.Length D=101 "Diameter of wind turbine";
  parameter Modelica.Units.SI.Power powerMax=3.05E6
    "Maximum mechanical power to be limited by betaLimit";
  parameter WindPowerPlants.Records.TurbineData.Generic turbineData "Wind turbine data" annotation(choicesAllMatching = true);
  Modelica.Units.SI.Torque tau "Torque of flange_a";
  Modelica.Units.SI.Angle phi "Angle of flange_a";
  Modelica.Blocks.Interfaces.RealInput v(unit = "m/s") "Wind velocity" annotation(Placement(transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  // ALIAS VARIABLES
  // Quantities at flange
  tau = -flange_a.tau;
  phi = flange_a.phi;
  annotation (Documentation(info = "<html>
<p>The base class wind turbine model contains relevant connectors, variables and parameters.</p>
</html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, grid = {2, 2}), graphics={  Line(origin = {-59.6474, -0.17987}, points = {{-0.706547, 0.533853}, {-20.3526, 80.1799}, {-0.3526, 100.18}, {19.6474, 80.1799}, {-20.3526, -79.8201}, {-0.3526, -99.8201}, {21.6474, -79.8201}, {0.00141724, 0.179871}}), Ellipse(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 10}, {-60, -10}}, endAngle = 360), Rectangle(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-80, 10}, {100, -10}}), Text(origin = {0, 121}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name")}));
end BaseWindTurbine;
