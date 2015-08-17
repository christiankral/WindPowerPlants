within WindPowerPlants.Examples;

model GenericPlantRayleigh "Generic wind power plant simulation with statistical wind data"
  extends Modelica.Icons.Example;
  Modelica.Blocks.Continuous.Integrator energyIntegrator(k = 1) annotation(Placement(transformation(origin = {60, 20}, extent = {{-10, -10}, {10, 10}})));
  Plants.GenericVariableSpeed plant annotation(Placement(transformation(extent = {{10, -10}, {30, 10}})));
  WindPowerPlants.WindSources.Rayleigh windSource(n = 25, vMax = 25, vMean = 6.07, T = 2678400) annotation(Placement(transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}})));
  Blocks.SpeedAdaptor speedadaptor1(hin = 50, hout = 105, roughness = 0.1) annotation(Placement(transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}})));
  Blocks.LogTerminal logTerminal(preString = "Total energy = ", postString = " kWh", gain = 1 / 3.6E6) annotation(Placement(transformation(extent = {{80, 10}, {100, 30}})));
equation
  connect(plant.power, energyIntegrator.u) annotation(Line(points = {{26, 11}, {26, 20}, {48, 20}}, color = {0, 0, 127}));
  connect(energyIntegrator.y, logTerminal.u) annotation(Line(points = {{71, 20}, {70, 20}, {78, 20}}, color = {0, 0, 127}));
  connect(windSource.v, speedadaptor1.vin) annotation(Line(points = {{-29, 0}, {-26, 0}, {-26, 6.66134e-16}, {-22, 6.66134e-16}}, color = {0, 0, 127}));
  connect(speedadaptor1.vout, plant.v) annotation(Line(points = {{1, 4.44089e-16}, {4, 4.44089e-16}, {4, 0}, {8, 0}}, color = {0, 0, 127}));
  annotation(experiment(StopTime = 2678400, Interval = 10), Documentation(info = "<html>
<p>This examples shows a generic wind power plant without electric connection to the mains. The simulation model uses statisctical wind data based on a Rayleigh distribution.</p>

</html>"));
end GenericPlantRayleigh;
