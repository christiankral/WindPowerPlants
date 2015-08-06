within WindPowerPlants.Interfaces;

partial model BasePlant "Ideal wind power plant without elecftrical connector"
  parameter Modelica.SIunits.Length D = 90 "Diameter of wind turbine" annotation(Dialog(tab = "Specification"));
  parameter Modelica.SIunits.Power powerMax = 2E6 "Maximum power to be limited by betaLimit" annotation(Dialog(tab = "Specification"));
  parameter WindPowerPlants.Records.TurbineData.Generic turbineData = WindPowerPlants.Records.TurbineData.Heier2009() "Wind turbine data" annotation(choicesAllMatching = true, Dialog(tab = "Specification"));
  parameter Modelica.SIunits.Inertia JTurbine = 1.3E7 "Moment of inertia of turbine and gear box" annotation(Dialog(tab = "Specification"));
  parameter Modelica.SIunits.Inertia JGenerator = 0 "Moment of inertia of generator" annotation(Dialog(tab = "Specification"));
  parameter Real ratio = 112.8 "Gear ratio > 1" annotation(Dialog(tab = "Specification"));
  parameter Modelica.SIunits.Time T = 1E-3 "Internal control time constant" annotation(Dialog(tab = "Control"));
  parameter Modelica.SIunits.Density rho = 1.2 "Mass density of air" annotation(Dialog(tab = "Ambient"));
  parameter WindPowerPlants.Records.TurbineControlData.Generic turbineControlData = WindPowerPlants.Records.TurbineControlData.Heier2009() "Turbine control" annotation(choicesAllMatching = true, Dialog(tab = "Control"));
  parameter Real k = 13500 "Troque controller gain" annotation(Dialog(tab = "Control"));
  parameter Modelica.SIunits.Time Ti = 25 "Controller time constant" annotation(Dialog(tab = "Control"));
  parameter Modelica.SIunits.Torque tauRef = 12732 "Reference = rated generator torque" annotation(Dialog(tab = "Control"));
  parameter Real limitMot = 0.01 "Motoring torque limit w.r.t. tauRef" annotation(Dialog(tab = "Control"));
  final parameter Modelica.SIunits.AngularVelocity wRef = powerMax / tauRef "Reference generator angular velocity" annotation(Dialog(tab = "Control"));
  parameter Modelica.SIunits.Velocity vMin = 4 "Minimum wind speed of operation" annotation(Dialog(tab = "Control"));
  parameter Modelica.SIunits.Angle phiStart = 0 "Mechanical starting angle of wind turbine";
  Modelica.Blocks.Interfaces.RealInput v "Wind velocity" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
  Modelica.Blocks.Interfaces.RealOutput power "Real power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {60, 110})));
  annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Polygon(points = {{-2, 26}, {-8, -80}, {8, -80}, {2, 26}, {-2, 26}}, lineColor = {0, 0, 0}, smooth = Smooth.None, fillColor = {213, 255, 170}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-10, 40}, {10, 20}}, lineColor = {0, 0, 0}, fillColor = {135, 135, 135}, fillPattern = FillPattern.Solid), Line(points = {{0, 100}}, color = {0, 0, 0}, smooth = Smooth.None), Polygon(points = {{0, 90}, {-6, 70}, {0, 30}, {6, 70}, {0, 90}}, lineColor = {0, 0, 0}, fillColor = {212, 212, 212}, smooth = Smooth.None, fillPattern = FillPattern.Solid), Polygon(points = {{-28, 48}, {-28, 48}}, lineColor = {0, 0, 0}, smooth = Smooth.None), Polygon(points = {{0, 30}, {38, 18}, {54, 3}, {32, 6}, {0, 30}}, lineColor = {0, 0, 0}, fillColor = {212, 212, 212}, smooth = Smooth.None, fillPattern = FillPattern.Solid), Polygon(points = {{0, 30}, {-36, 14}, {-50, -3}, {-29, 3}, {0, 30}}, lineColor = {0, 0, 0}, fillColor = {212, 212, 212}, smooth = Smooth.None, fillPattern = FillPattern.Solid), Ellipse(extent = {{-5, 35}, {5, 25}}, lineColor = {0, 0, 0}, fillColor = {212, 212, 212}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
<p>Base class of wind power plant</p>
</html>"));
end BasePlant;