within WindPowerPlants.Examples;
model GenericPlantElectricRealData
  "Generic wind power plant simulation with real wind data and mains"
  extends Modelica.Icons.Example;
  parameter String fileName = Modelica.Utilities.Files.loadResource("modelica://WindPowerPlants/Resources/Data/beresford2006.txt")
    "File on which data is present"                                                                                                   annotation(Dialog(loadSelector(filter = "Text files (*.txt)", caption = "Open text file to read parameters of the form \"name = value\"")));
  Modelica.Blocks.Continuous.Integrator energyIntegrator annotation(Placement(visible = true, transformation(origin = {60, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor resistor(R_ref = fill(1, 3)) annotation(Placement(visible = true, transformation(origin = {20, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor inductor(L = fill(0.0072934, 3)) annotation(Placement(visible = true, transformation(origin = {20, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground ground annotation(Placement(visible = true, transformation(origin = {-60, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  WindPowerPlants.Plants.GenericVariableSpeedElectrical plant annotation(Placement(visible = true, transformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource voltagesource(f = 50, V = fill(10000 / sqrt(3), 3)) annotation(Placement(visible = true, transformation(origin = {-10, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star star annotation(Placement(visible = true, transformation(origin = {-40, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  WindSources.RealData windSource(fileName = fileName) annotation(Placement(visible = true, transformation(extent = {{-50, -10}, {-30, 10}}, rotation = 0)));
  Blocks.LogTerminal logTerminal(preString = "Total energy = ", postString = " kWh", gain = 1 / 3.6E6) annotation(Placement(transformation(extent = {{80, 10}, {100, 30}})));
  Blocks.SpeedAdaptor speedadaptor1(hin = 50, hout = 105, roughness = 0.1) annotation(Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(star.pin_n, ground.pin) annotation(Line(points = {{-50, -70}, {-60, -70}}, color = {85, 170, 255}));
  connect(star.plug_p, voltagesource.plug_n) annotation(Line(points = {{-30, -70}, {-20, -70}}, color = {85, 170, 255}));
  connect(voltagesource.plug_p, inductor.plug_p) annotation(Line(points = {{4.44089e-16, -70}, {4.44089e-16, -70}, {20, -70}}, color = {85, 170, 255}));
  connect(resistor.plug_n, plant.positivePlug) annotation(Line(points = {{20, -20}, {20, -10}}, color = {85, 170, 255}));
  connect(plant.power, energyIntegrator.u) annotation(Line(points = {{26, 11}, {26, 11}, {26, 12}, {26, 20}, {32, 20}, {48, 20}}, color = {0, 0, 127}));
  connect(inductor.plug_n, resistor.plug_p) annotation(Line(points = {{20, -50}, {20, -50}, {20, -40}}, color = {85, 170, 255}));
  connect(energyIntegrator.y, logTerminal.u) annotation(Line(points = {{71, 20}, {71, 20}, {78, 20}}, color = {0, 0, 127}));
  connect(windSource.v, speedadaptor1.vin) annotation(Line(points = {{-29, 4.44089e-16}, {-22, 4.44089e-16}, {-22, 0}}, color = {0, 0, 127}));
  connect(speedadaptor1.vout, plant.v) annotation(Line(points = {{1, 0}, {4, 0}, {4, 8.88178e-16}, {8, 8.88178e-16}}, color = {0, 0, 127}));
  annotation(experiment(StopTime = 2678400, Interval = 10), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Documentation(info = "<html>
<p>This examples shows a generic wind power plant with electric connection to the mains. The simulation model uses real wind data.</p>

<p>Examples of real wind data can be taken from 
<a href=\"https://catalog.data.gov/dataset/anemometer-data-wind-speed-direction-for-beresford-south-dakota-2006-4f2db\">data.gov</a> 
for an anemometer in the height of 50m. The data are provided under 
<a href=\"modelica://WindPowerPlants/Resources/Data/ODC_PDDLicense.pdf\">Open Data Commons (ODC) Public Domain Dedication and Licence (PDDL)</a>. 
These data have been converted into a Modelica readable test file 
<a href=\"modelica://WindPowerPlants/Resources/Data/beresford2006.txt\">Resources/Data/beresford2006.txt</a>.</p>

<p>
In case the data of single month of 2006 shall be simulated the following table can be used to set
simulation start and stop times accordingly.
<pre>
YYYY-MM-DD  HH:MM:SS  time (s)
------------------------------
2006-01-01  00:00:00         0
2006-02-01  00:00:00   2678400
2006-03-01  00:00:00   5097600
2006-04-01  00:00:00   7776000
2006-05-01  00:00:00  10368000
2006-06-01  00:00:00  13046400
2006-07-01  00:00:00  15638400
2006-08-01  00:00:00  18316800
2006-09-01  00:00:00  20995200
2006-10-01  00:00:00  23587200
2006-11-01  00:00:00  26265600
2006-12-01  00:00:00  28857600
2007-01-01  00:00:00  31536000
</pre>
</p>

<p>In the provided example the wind speed data are transformed from 50m to a height of 105m 
using a roughness of 0.1m.</p>
</html>"));
end GenericPlantElectricRealData;
