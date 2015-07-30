within WindPowerPlants.Examples;
model GenericPlantRealData
  "Generic wind power plant simulation with real wind data"
  extends Modelica.Icons.Example;
  parameter String fileName = Modelica.Utilities.Files.loadResource("modelica://WindPowerPlants/Resources/Data/beresford2006.txt")
    "File on which data is present"                                                                                                   annotation(Dialog(loadSelector(filter = "Text files (*.txt)", caption = "Open text file to read parameters of the form \"name = value\"")));
  Modelica.Blocks.Continuous.Integrator energyIntegrator(k = 1) annotation(Placement(visible = true, transformation(origin = {60, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Plants.GenericVariableSpeed plant(limitMot = 0.01, k = 120 * 112.8) annotation(Placement(transformation(extent = {{10, -10}, {30, 10}})));
  WindSources.RealData windSource(fileName = fileName) annotation(Placement(visible = true, transformation(extent = {{-50, -10}, {-30, 10}}, rotation = 0)));
  WindPowerPlants.Blocks.SpeedAdaptor speedadaptor1(hin = 50, hout = 105, roughness = 0.1) annotation(Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Blocks.LogTerminal logTerminal(preString = "Total energy = ", postString = " kWh", gain = 1 / 3.6E6) annotation(Placement(transformation(extent = {{80, 10}, {100, 30}})));
equation
  connect(plant.power, energyIntegrator.u) annotation(Line(points = {{26, 11}, {26, 20}, {48, 20}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(energyIntegrator.y, logTerminal.u) annotation(Line(points = {{71, 20}, {70, 20}, {78, 20}}, color = {0, 0, 127}));
  connect(windSource.v, speedadaptor1.vin) annotation(Line(points = {{-29, 0}, {-25.5, 0}, {-22, 0}}, color = {0, 0, 127}));
  connect(speedadaptor1.vout, plant.v) annotation(Line(points = {{1, 0}, {4, 0}, {4, 8.88178e-16}, {8, 8.88178e-16}}, color = {0, 0, 127}));
  annotation(experiment(StopTime = 2678400, Interval = 10), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2})), Documentation(info = "<html>
<p>This examples shows a generic wind power plant without electric connection to the mains. The simulation model uses real wind data.</p>

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
end GenericPlantRealData;
