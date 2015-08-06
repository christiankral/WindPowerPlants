within WindPowerPlants.Examples.Modelica2015Conference;

model GenericPlant_A "Generic wind power plant A [Eberhart2015] with statistical wind data"
  extends Modelica.Icons.Example;
  Modelica.Blocks.Continuous.Integrator energyIntegrator(k = 1) annotation(Placement(visible = true, transformation(origin = {60, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Plants.GenericVariableSpeed plant(rho = 1.198, D = 112, powerMax = 3E6, JTurbine = 3E7) annotation(Placement(transformation(extent = {{10, -10}, {30, 10}})));
  WindPowerPlants.WindSources.Rayleigh windSource(n = 25, vMax = 25, T = 31536000, vMean = 6.95) annotation(Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Blocks.LogTerminal logTerminal(preString = "Total energy = ", postString = " kWh", gain = 1 / 3.6E6) annotation(Placement(transformation(extent = {{80, 10}, {100, 30}})));
equation
  connect(plant.power, energyIntegrator.u) annotation(Line(points = {{26, 11}, {26, 20}, {48, 20}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(windSource.v, plant.v) annotation(Line(points = {{1, 4.44089e-16}, {1, 0}, {8, 0}}, color = {0, 0, 127}));
  connect(energyIntegrator.y, logTerminal.u) annotation(Line(points = {{71, 20}, {78, 20}}, color = {0, 0, 127}));
  annotation(experiment(StopTime = 31536000, Interval = 10), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2})), Documentation(info = "<html>
<p>The results of simulation example A are incorporated in
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Eberhart2015</a>].
The average wind speed <code>vMean = 6.95 m/s</code>. The total energy generated
can be determined from <code>energyIntegrator.y</code>.
</p>
</html>"));
end GenericPlant_A;