within WindPowerPlants.Examples.Modelica2015Conference;
model GenericPlant_B
  "Generic wind power plant B [Eberhart2015] with statistical wind data"
  extends GenericPlant_A(windSource(vMean = 7.12));
  annotation(experiment(StopTime = 31536000, Interval = 10), Documentation(info = "<html>
<p>The results of simulation example B are incorporated in
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Eberhart2015</a>].
The average wind speed <code>vMean = 6.95 m/s</code>. The total energy generated
can be determined from <code>energyIntegrator.y</code>.
</p>
</html>"));
end GenericPlant_B;
