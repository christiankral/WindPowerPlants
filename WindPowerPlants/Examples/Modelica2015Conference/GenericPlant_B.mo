within WindPowerPlants.Examples.Modelica2015Conference;
model GenericPlant_B "Generic wind power plant B [Eberhart2015] with statistical wind data"
  extends WindPowerPlants.Examples.Modelica2015Conference.GenericPlant_A(windSource(vMean = 7.12));
  annotation(experiment(StopTime = 3.1536e+07, Interval = 10, StartTime = 0, Tolerance = 1e-06), Documentation(info = "<html>
<p>The results of simulation example B are incorporated in
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Eberhart2015</a>].
The average wind speed <code>vMean = 6.95 m/s</code>. The total energy generated
can be determined from <code>energyIntegrator.y</code>.
</p>
</html>"),
  __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "cvode"));
end GenericPlant_B;