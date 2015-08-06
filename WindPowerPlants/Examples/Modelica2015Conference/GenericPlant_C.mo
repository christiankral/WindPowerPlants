within WindPowerPlants.Examples.Modelica2015Conference;

model GenericPlant_C "Generic wind power plant C [Eberhart2015] with statistical wind data"
  extends GenericPlant_A(windSource(vMean = 7.30), plant(powerMax = 2E6, JTurbine = 2.2E7, D = 90));
  annotation(experiment(StopTime = 31536000, Interval = 10), Documentation(info = "<html>
<p>The results of simulation example C are incorporated in
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Eberhart2015</a>].
The average wind speed <code>vMean = 6.95 m/s</code>. The total energy generated
can be determined from <code>energyIntegrator.y</code>.
</p>
</html>"));
end GenericPlant_C;