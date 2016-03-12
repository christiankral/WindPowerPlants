package WindPowerPlants "Library of wind power plants"
  extends Modelica.Icons.Package;
  annotation(version = "0.9.7", versionBuild = 1, versionDate = "2016-03-12", uses(Modelica(version = "3.2.1"), Complex(version = "3.2.1")), preferredView = "info", Documentation(info = "<html>
<h3>WindPowerPlants Library</h3>

<p>The WindPowerPlants library is an open source library for the
simulation of wind power plants. The library provides models of wind
turbines, generators and control.</p>

<h4>Short description</h4>

<p>In the presented version of the library wind turbine models are modeled with
pitch control. The generator models have variable speed and an optional
connector to the mains. The entire library is based on power balance
conditions and losses are fully neglected. Yet, the library
can be extended towards more detailed models considering different types of
losses.</p>

<p>The WindPowerPlants library does not model all the controllers that a real
wind power plant has. Instead, the intention was to model the overall
behavior of wind power plants in such a way, that the major operating
conditions are fulfilled. Therefore, only mechanical dynamics are taken into
account. Electrical transients are fully neglected. There is yet an
electrical interface available to couple electrical networks with one or
more wind power plants. This electrical interface to the mains is based on a
quasi static multi phase connector.</p>

<h4><a href=\"modelica://WindPowerPlants.UsersGuide.License\">License</a>
</h4></html>"));
end WindPowerPlants;
