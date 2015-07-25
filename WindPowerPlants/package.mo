package WindPowerPlants "Library of wind power plants"
  extends Modelica.Icons.Package;

  package UsersGuide "User's Guide"
    extends Modelica.Icons.Information;

    class Concept "Concept"
      extends Modelica.Icons.Information;
      annotation(preferredView = "info", Documentation(info = "<html>
<p>
The concept of the WindPowerPlants library is described in
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Eberhart2015</a>].
</p>
</html>"));
    end Concept;

    class License "Modelica License 1.1"
      extends Modelica.Icons.Information;
      annotation(Documentation(info = "<html>
<h3>WindPowerPlants Modelica Library and Octave Scripts</h3>

<p>The WindPowerPlants library and the included Octave scripts are released under the
<a href=\"https://www.modelica.org/licenses/ModelicaLicense1.1\">Modelica License 1.1</a>
</p>
<h4>
 The Modelica License (Version 1.1 of June 30, 2000)
</h4>
<p>
Redistribution and use in source and binary forms, with or without modification
are permitted, provided that the following conditions are met:
<ol>
  <li> The author and copyright notices in the source files, these license
       conditions and the disclaimer below are (a) retained and (b) reproduced
       in the documentation provided with the distribution.</li>
  <li> Modifications of the original source files are allowed, provided that a
       prominent notice is inserted in each changed file and the accompanying
       documentation, stating how and when the file was modified, and provided
       that the conditions under (1) are met.</li>
  <li> It is not allowed to charge a fee for the original version or a modified
       version of the software, besides a reasonable fee for distribution and
       support. Distribution in aggregate with other (possibly commercial)
       programs as part of a larger (possibly commercial) software distribution
       is permitted, provided that it is not advertised as a product of your
       own.</li>
</ol>
<h5>Disclaimer</h5>
<p>
The software (sources, binaries, etc.) in their original or in a modified form
 are provided \"as is\" and the copyright holders assume no responsibility for
 its contents what so ever. Any express or implied warranties, including, but
 not limited to, the implied warranties of merchantability and fitness for a
 particular purpose are <b>disclaimed</b>. <b>In no event</b> shall the
 copyright holders, or any party who modify and/or redistribute the package,
 <b>be liable</b> for any direct, indirect, incidental, special, exemplary,
 or consequential damages, arising in any way out of the use of this software,
 even if advised of the possibility of such damage.
</p>

<h3>Wind Data</h3>

<p>Examples of real wind data can be taken from
<a href=\"https://catalog.data.gov/dataset/anemometer-data-wind-speed-direction-for-beresford-south-dakota-2006-4f2db\">data.gov</a>
for an anemometer in the height of 50m. The data are provided under
<a href=\"modelica://WindPowerPlants/Resources/Data/ODC_PDDLicense.pdf\">Open Data Commons (ODC) Public Domain Dedication and Licence (PDDL)</a>.
These data have been converted into a Modelica readable test file
<a href=\"modelica://WindPowerPlants/Resources/Data/beresford2006.txt\">Resources/Data/beresford2006.txt</a>.</p>

</html>"));
    end License;

    class Contact "Contact"
      extends Modelica.Icons.Contact;
      annotation(preferredView = "info", Documentation(info = "<html>
<h4>Contact</h4>

<p>
Christian Kral<br>
<a href=\"http://christiankral.net\">Electric machines and drives</a><br>
1060 Vienna, Austria<br>
email: <a HREF=\"mailto:dr.christian.kral@gmail.com\">dr.christian.kral@gmail.com</a><br>
</p>

<h4>Co-Authors of the Library</h4>
<p>
Philip Eberhart<br>
3400 Klosterneuburg, Austria<br>
</p>

<p>
Tek Shan Chung<br>
1210 Vienna, Austria<br>
</p>

<p>
This library was developed during a diploma thesis at the
<a href=\"http://www.tgm.ac.at\">TGM</a>
by Philip Eberhart and Tek Shan Chung under the supervision of Christian Kral.
</p>
</html>"));
    end Contact;

    class References "References"
      extends Modelica.Icons.References;
      annotation(preferredView = "info", Documentation(info = "<html>
<h4>References</h4>

<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
    <tr>
      <td valign=\"top\">[Allagui2013]</td>
      <td valign=\"top\">Mehdi Allagui, Othman B.K Hasnaoui, Jamel Belhadj
        &quot;Exploitation
        of pitch control to improve the integration of a direct drive wind turbine to the grid,&quot;
        <i>J. Electrical Systems</i> 9(2),
      pp. 179-190, 2013</td>
    </tr>

    <tr>
      <td valign=\"top\">[Eberhart2015]</td>
      <td valign=\"top\">Philip Eberhart, Tek Shan Chung, Anton Haumer, Christian Kral
        &quot;<a href=\"https://www.modelica.org/events/modelica2015/\">Open
        Source Library for the Simulation of Wind Power Plants</a>,&quot;
        <i>Modelica Conference</i>,
        September 2015.</td>
    </tr>

    <tr>
      <td valign=\"top\">[Heier2009]</td>
      <td valign=\"top\">S. Heier
        <i><a href=\"\">Windkraftanlagen: Systemauslegung, Netzintegration und Regelung</a></i>
        (in German), 5th ed., ISBN 978-3-8351-0142-5,
        <i>Springer Verlag</i>,
        2009</td>
    </tr>

    <tr>
      <td valign=\"top\">[Thonham2009]</td>
      <td valign=\"top\">J. Thongam, P. Bouchard, H. Ezzaidi, M. Ouhrouche,
      &quot;Wind speed sensorless maximum power point tracking control of
      variable speed wind energy conversion systems,&quot; <i>IEEE International Electric Machines
      and Drives Conference, IEMDC '09. ,</i>
      pp. 1832-1837, 2009
    </tr>

</table>

</html>"));
    end References;

    class ReleaseNotes "Release Notes"
      extends Modelica.Icons.ReleaseNotes;
      annotation(preferredView = "info", Documentation(info = "<html>

<h5>IMPORTANT NOTE</h5>
<p>The WindPowerPlants library is based on Modelica classes which are going the be released
in the MSL 3.2.2. In order to provide compatibility to the actual release of
MSL 3.2.1 the package <a href=\"WindPowerPlants.MSL_322\">MSL_322</a> is provided.
Once MSL 3.2.2 is release package <a href=\"WindPowerPlants.MSL_322\">MSL_322</a>
will be removed and this will cause a <b>non backwards compatible change</b>
of the library. If you do not use components of the
<a href=\"WindPowerPlants.MSL_322\">MSL_322</a> package directly,
you do not have to be concerned about this issue.
</p>

<h5>Version 0.9.0, 2015-XX-XX</h5>
<ul>
<li>Implemented open wind data to be distributed with the library</li>
<li>Put library under
    <a href=\"modelica://WindPowerPlants.UsersGuide.License\">Modelica license 1.1</a></li>
<li>Updated documentation of library</li>
<li>Re-structured example models</li>
<li>Added more turbine control data</code>
</ul>

<h5>Version 0.1.0, 2015-07-22</h5>
<ul>
<li>First version based on partner wind data which are intended for public use</li>
<li>This version is not publicly available</li>
</ul>
</html>"));
    end ReleaseNotes;
    annotation(preferredView = "info", Documentation(info = "<html>
<p>
This library provides models for the modeling and simulation of wind power plants.
</p>
</html>"));
  end UsersGuide;

  package Examples "Examples"
    extends Modelica.Icons.ExamplesPackage;

    model CpLambdaWindTurbine "Investigate cp versus lambda of wind turbine for different pitch angles"
      extends Modelica.Icons.Example;
      Components.PitchWindTurbine windturbine(D = 101, powerMax = 3.05E6, turbineData = WindPowerPlants.Records.TurbineData.Heier2009()) annotation(Placement(visible = true, transformation(origin = {-22, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed(exact = true) annotation(Placement(visible = true, transformation(origin = {20, 0}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant rotationalSpeed(k = 1.4661) annotation(Placement(visible = true, transformation(origin = {60, 0}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Blocks.TriangleAndRamp triangleAndRamp(T = 1, stepNumber = 10, stepHeight = 90, stepOffset = 0, triangleHeight = 18, triangleOffset = 2) annotation(Placement(transformation(extent = {{-80, 10}, {-60, -10}})));
    equation
      connect(rotationalSpeed.y, speed.w_ref) annotation(Line(points = {{49, 0}, {33.2743, 0}, {33.2743, 6.66134e-016}, {32, 6.66134e-016}}));
      connect(speed.flange, windturbine.flange_a) annotation(Line(points = {{10, 0}, {-12, 0}}));
      connect(triangleAndRamp.triangle, windturbine.v) annotation(Line(points = {{-59, 6}, {-46, 6}, {-46, 8.88178e-16}, {-33, 8.88178e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(triangleAndRamp.step, windturbine.beta) annotation(Line(points = {{-59, -6}, {-33, -6}}, color = {0, 0, 127}, smooth = Smooth.None));
      annotation(experiment(StopTime = 1, Interval = 1E-5), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), Documentation(info = "<html>
<p>
Plot <code>windturbine.cp</code> as a function of <code>windturbine.lambda</code> and scale such way that only positive cp values are displayed. This parametric curves then represent the cp versus lambda for different pitch angles beta.</p>
</html>"));
    end CpLambdaWindTurbine;

    model GenericPlantRayleigh "Generic wind power plant simulation with statistical wind data"
      extends Modelica.Icons.Example;
      Modelica.Blocks.Continuous.Integrator energyIntegrator(k = 1) annotation(Placement(visible = true, transformation(origin = {60, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Plants.GenericVariableSpeed plant annotation(Placement(transformation(extent = {{10, -10}, {30, 10}})));
      WindPowerPlants.WindSources.Rayleigh windSource(n = 25, vMax = 25, vMean = 6.07, T = 2678400) annotation(Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Blocks.SpeedAdaptor speedadaptor1(hin = 50, hout = 105, roughness = 0.1) annotation(Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Blocks.LogTerminal logTerminal(preString = "Total energy = ", postString = " kWh", gain = 1 / 3.6E6) annotation(Placement(transformation(extent = {{80, 10}, {100, 30}})));
    equation
      connect(plant.power, energyIntegrator.u) annotation(Line(points = {{26, 11}, {26, 20}, {48, 20}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(energyIntegrator.y, logTerminal.u) annotation(Line(points = {{71, 20}, {70, 20}, {78, 20}}, color = {0, 0, 127}));
      connect(windSource.v, speedadaptor1.vin) annotation(Line(points = {{-29, 0}, {-26, 0}, {-26, 6.66134e-16}, {-22, 6.66134e-16}}, color = {0, 0, 127}));
      connect(speedadaptor1.vout, plant.v) annotation(Line(points = {{1, 4.44089e-16}, {4, 4.44089e-16}, {4, 0}, {8, 0}}, color = {0, 0, 127}));
      annotation(experiment(StopTime = 2678400, Interval = 10), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2})), Documentation(info = "<html>
<p>This examples shows a generic wind power plant without electric connection to the mains. The simulation model uses statisctical wind data based on a Rayleigh distribution.</p>

</html>"));
    end GenericPlantRayleigh;

    model GenericPlantRealData "Generic wind power plant simulation with real wind data"
      extends Modelica.Icons.Example;
      parameter String fileName = Modelica.Utilities.Files.loadResource("modelica:/WindPowerPlants/Resources/Data/beresford2006.txt") "File on which data is present" annotation(Dialog(loadSelector(filter = "Text files (*.txt)", caption = "Open text file to read parameters of the form \"name = value\"")));
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

    model GenericPlantElectricRealData "Generic wind power plant simulation with real wind data and mains"
      extends Modelica.Icons.Example;
      parameter String fileName = Modelica.Utilities.Files.loadResource("modelica:/WindPowerPlants/Resources/Data/beresford2006.txt") "File on which data is present" annotation(Dialog(loadSelector(filter = "Text files (*.txt)", caption = "Open text file to read parameters of the form \"name = value\"")));
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
      annotation(experiment(StopTime = 2678400, NumberOfIntervals = 267840), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Documentation(info = "<html>
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

    package Modelica2015Conference "Simulation model shown in Paper of Modelica 2015 conference"
      extends Modelica.Icons.ExamplesPackage;

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

      model GenericPlant_B "Generic wind power plant B [Eberhart2015] with statistical wind data"
        extends GenericPlant_A(windSource(vMean = 7.12));
        annotation(experiment(StopTime = 31536000, Interval = 10), Documentation(info = "<html>
<p>The results of simulation example B are incorporated in
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Eberhart2015</a>].
The average wind speed <code>vMean = 6.95 m/s</code>. The total energy generated
can be determined from <code>energyIntegrator.y</code>.
</p>
</html>"));
      end GenericPlant_B;

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
    end Modelica2015Conference;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Examples;

  package Plants "Wind power plant models"
    extends Modelica.Icons.Package;

    model GenericVariableSpeed "Ideal wind power plant with variable speed generator"
      extends Interfaces.BasePlant;
      Modelica.SIunits.AngularVelocity wGenerator = der(generator.flange_a.phi) "Angular velocity of generator";
      Modelica.SIunits.AngularVelocity wTurbine = der(windturbine.flange_a.phi) "Angular velocity of turbine";
      Components.PitchWindTurbineControlled windturbine(final rho = rho, final D = D, final powerMax = powerMax, final turbineData = turbineData, final turbineControlData = turbineControlData, final T = T) annotation(Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
      Blocks.AngularVelocityController angularVelocityControl(final turbineControlData = turbineControlData, final D = D, final k = k, final Ti = Ti, final tauRef = tauRef, final limitMot = limitMot, final vMin = vMin) annotation(Placement(transformation(extent = {{-40, -60}, {-20, -40}})));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(final J = JTurbine) annotation(Placement(transformation(extent = {{-30, -10}, {-10, 10}})));
      Components.GenericVariableSpeedGenerator generator(final J = JGenerator) "Generic variable speed generator" annotation(Placement(transformation(extent = {{60, -10}, {40, 10}})));
      Modelica.Mechanics.Rotational.Components.IdealGear idealGear(final ratio = ratio) annotation(Placement(transformation(extent = {{20, -10}, {0, 10}})));
      Blocks.TorqueLimiter torqueLimiter(tauRef = tauRef, wRef = wRef) annotation(Placement(transformation(extent = {{20, -60}, {40, -40}})));
      Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {30, -20})));
    equation
      connect(windturbine.lambda, angularVelocityControl.lambda) annotation(Line(points = {{-56, -11}, {-56, -50}, {-41, -50}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(windturbine.flange_a, inertia.flange_a) annotation(Line(points = {{-40, 0}, {-30, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(windturbine.v, v) annotation(Line(points = {{-61, 0}, {-120, 0}, {-120, 8.88178e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(angularVelocityControl.v, v) annotation(Line(points = {{-41, -56}, {-80, -56}, {-80, 8.88178e-16}, {-120, 8.88178e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(generator.power, power) annotation(Line(points = {{56, 11}, {56, 60}, {60, 60}, {60, 110}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(inertia.flange_b, idealGear.flange_b) annotation(Line(points = {{-10, 0}, {0, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(speedSensor.w, torqueLimiter.w) annotation(Line(points = {{30, -31}, {30, -39}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(idealGear.flange_a, generator.flange_a) annotation(Line(points = {{20, 6.66134e-16}, {30, 6.66134e-16}, {30, 0}, {40, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(angularVelocityControl.tau, torqueLimiter.tau) annotation(Line(points = {{-19, -50}, {18, -50}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(torqueLimiter.tauLimited, generator.tau) annotation(Line(points = {{41, -50}, {80, -50}, {80, 0}, {62, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(speedSensor.flange, generator.flange_a) annotation(Line(points = {{30, -10}, {30, 0}, {40, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      annotation(defaultComponentName = "plant", Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>This is a generic wind turbine model with variable speed generator and pitch control.</p>
</html>"));
    end GenericVariableSpeed;

    model GenericVariableSpeedElectrical "Ideal wind power plant with variable speed generator and electrical connector"
      extends Interfaces.BasePlant;
      parameter Modelica.SIunits.Voltage VRef = 10000 "Reference line to line voltage of generator" annotation(Dialog(tab = "Specification"));
      Modelica.SIunits.AngularVelocity wGenerator = der(generator.flange_a.phi) "Angular velocity of generator";
      Modelica.SIunits.AngularVelocity wTurbine = der(windturbine.flange_a.phi) "Angular velocity of turbine";
      Components.PitchWindTurbineControlled windturbine(final rho = rho, final D = D, final powerMax = powerMax, final turbineData = turbineData, final turbineControlData = turbineControlData, final T = T) annotation(Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
      Blocks.AngularVelocityController angularVelocityControl(final turbineControlData = turbineControlData, final D = D, final k = k, final Ti = Ti, final tauRef = tauRef, final limitMot = limitMot, final vMin = vMin) annotation(Placement(transformation(extent = {{-40, -60}, {-20, -40}})));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(J = JTurbine) annotation(Placement(transformation(extent = {{-30, -10}, {-10, 10}})));
      Components.GenericVariableSpeedGeneratorElectrical generator(J = JGenerator, final VRef = VRef, final T = T) "Generic variable speed generator with mains connector" annotation(Placement(transformation(extent = {{60, -10}, {40, 10}})));
      Modelica.Mechanics.Rotational.Components.IdealGear idealGear(ratio = ratio) annotation(Placement(transformation(extent = {{20, -10}, {0, 10}})));
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug positivePlug(final m = 3) annotation(Placement(transformation(extent = {{-10, -110}, {10, -90}})));
      Modelica.Blocks.Interfaces.RealOutput reactivePower "Reactive power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-60, 110})));
      Blocks.TorqueLimiter torqueLimiter(tauRef = tauRef, wRef = wRef) annotation(Placement(transformation(extent = {{20, -60}, {40, -40}})));
      Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {30, -20})));
    equation
      connect(windturbine.lambda, angularVelocityControl.lambda) annotation(Line(points = {{-56, -11}, {-56, -50}, {-41, -50}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(windturbine.flange_a, inertia.flange_a) annotation(Line(points = {{-40, 0}, {-30, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(windturbine.v, v) annotation(Line(points = {{-61, 0}, {-120, 0}, {-120, 8.88178e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(angularVelocityControl.v, v) annotation(Line(points = {{-41, -56}, {-80, -56}, {-80, 8.88178e-16}, {-120, 8.88178e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(generator.power, power) annotation(Line(points = {{56, 11}, {56, 60}, {60, 60}, {60, 110}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(inertia.flange_b, idealGear.flange_b) annotation(Line(points = {{-10, 0}, {-4.44089e-16, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(idealGear.flange_a, generator.flange_a) annotation(Line(points = {{20, 0}, {30, 0}, {30, 4.44089e-16}, {40, 4.44089e-16}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(generator.positivePlug, positivePlug) annotation(Line(points = {{50, 10}, {50, 20}, {90, 20}, {90, -80}, {0, -80}, {0, -92}, {4.44089e-16, -92}, {4.44089e-16, -100}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(generator.reactivePower, reactivePower) annotation(Line(points = {{44, 11}, {44, 48}, {-60, 48}, {-60, 110}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(speedSensor.w, torqueLimiter.w) annotation(Line(points = {{30, -31}, {30, -39}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(angularVelocityControl.tau, torqueLimiter.tau) annotation(Line(points = {{-19, -50}, {18, -50}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(torqueLimiter.tauLimited, generator.tau) annotation(Line(points = {{41, -50}, {80, -50}, {80, 8.88178e-16}, {62, 8.88178e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(speedSensor.flange, generator.flange_a) annotation(Line(points = {{30, -10}, {30, 4.44089e-16}, {40, 4.44089e-16}}, color = {0, 0, 0}, smooth = Smooth.None));
      annotation(defaultComponentName = "plant", Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>This is a generic wind turbine model with variable speed generator and pitch control. The plant model is equipped with a multi phase quasi static connector to the mains. The generator is controlled such way that the reactive power is equal to zero.</p>
</html>"));
    end GenericVariableSpeedElectrical;
  end Plants;

  package Components "Components"
    extends Modelica.Icons.Package;

    model GenericVariableSpeedGenerator "Ideal doubly fed induction generator without electrical connector"
      parameter Modelica.SIunits.Inertia J = 0 "Moment of inertia" annotation(Evaluate = true);
      Modelica.SIunits.AngularVelocity w = der(flange_a.phi) "Angular rotor velocity";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(transformation(extent = {{90, -10}, {110, 10}})));
      Modelica.Blocks.Interfaces.RealInput tau "Torque to be controlled" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {-52, 0}, extent = {{-28, -10}, {-8, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.PowerSensor mechanicalPowerSensor annotation(Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(w(fixed = true, start = 0.2), final J = J) annotation(Placement(transformation(extent = {{40, -10}, {60, 10}})));
      Modelica.Blocks.Interfaces.RealOutput power "Real power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-60, 110}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-60, 110})));
    equation
      connect(tau, torque.tau) annotation(Line(points = {{-120, 0}, {-82, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(torque.flange, mechanicalPowerSensor.flange_a) annotation(Line(points = {{-60, 0}, {-52, 0}, {-52, -6.66134e-16}, {-40, -6.66134e-16}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(inertia.flange_b, flange_a) annotation(Line(points = {{60, 0}, {76, 0}, {76, 4.44089e-16}, {100, 4.44089e-16}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(mechanicalPowerSensor.flange_b, inertia.flange_a) annotation(Line(points = {{-20, -6.66134e-16}, {10, -6.66134e-16}, {10, 0}, {40, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(mechanicalPowerSensor.power, power) annotation(Line(points = {{-38, 11}, {-38, 40}, {-60, 40}, {-60, 110}}, color = {0, 0, 127}, smooth = Smooth.None));
      annotation(defaultComponentName = "generator", Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-50, 60}, {70, -60}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {213, 255, 170}), Rectangle(extent = {{-50, 60}, {-70, -60}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {128, 128, 128}), Rectangle(extent = {{70, 10}, {90, -10}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {95, 95, 95}), Rectangle(extent = {{-50, 70}, {30, 50}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-60, -90}, {-50, -90}, {-20, -20}, {30, -20}, {60, -90}, {70, -90}, {70, -100}, {-60, -100}, {-60, -90}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>Variable speed generator with 100% efficiency and no loss.
The generator has a torque input which is directly converted into a
physical signal of the rotational connector.
</p>
</html>"));
    end GenericVariableSpeedGenerator;

    model GenericVariableSpeedGeneratorElectrical "Idealized doubly fed induction generator with electrical connector"
      parameter Modelica.SIunits.Inertia J = 0 "Moment of inertia" annotation(Evaluate = true);
      parameter Modelica.SIunits.Voltage VRef = 1 "Reference line to line voltage";
      parameter Modelica.SIunits.Time T = 1E-3 "Internal control time constant";
      Modelica.SIunits.AngularVelocity w = der(flange_a.phi) "Angular rotor velocity";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(transformation(extent = {{90, -10}, {110, 10}})));
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug positivePlug annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      Modelica.Blocks.Interfaces.RealInput tau "Torque to be controlled" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {-52, 0}, extent = {{-28, -10}, {-8, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.PowerSensor mechanicalPowerSensor annotation(Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Sources.IdealRealPowerConductance idealPower(final VRef = VRef, final T = T) annotation(Placement(transformation(extent = {{-10, 10}, {10, 30}})));
      MSL_322.PowerSensor electricalPowerSensor(final m = 3) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {0, 50})));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star star(final m = 3) annotation(Placement(transformation(extent = {{-50, 40}, {-70, 60}})));
      Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground ground annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {-90, 50})));
      Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-30, 70})));
      Modelica.Blocks.Interfaces.RealOutput power "Real power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-60, 110})));
      Modelica.Blocks.Interfaces.RealOutput reactivePower "Reactive power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {60, 110})));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(w(fixed = true, start = 0.2), final J = J) annotation(Placement(transformation(extent = {{40, -10}, {60, 10}})));
    equation
      connect(tau, torque.tau) annotation(Line(points = {{-120, 0}, {-82, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(torque.flange, mechanicalPowerSensor.flange_a) annotation(Line(points = {{-60, 0}, {-40, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(mechanicalPowerSensor.power, idealPower.power) annotation(Line(points = {{-38, 11}, {-38, 20}, {-12, 20}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(positivePlug, electricalPowerSensor.currentP) annotation(Line(points = {{0, 100}, {2.66454e-15, 100}, {2.66454e-15, 60}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(electricalPowerSensor.currentP, electricalPowerSensor.voltageP) annotation(Line(points = {{0, 60}, {10, 60}, {10, 50}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(star.plug_p, electricalPowerSensor.voltageN) annotation(Line(points = {{-50, 50}, {-10, 50}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(ground.pin, star.pin_n) annotation(Line(points = {{-80, 50}, {-70, 50}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(electricalPowerSensor.currentN, idealPower.positivePlug) annotation(Line(points = {{0, 40}, {0, 30}, {6.66134e-16, 30}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(complexToReal.u, electricalPowerSensor.y) annotation(Line(points = {{-30, 58}, {-11, 58}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(complexToReal.re, power) annotation(Line(points = {{-36, 82}, {-36, 90}, {-60, 90}, {-60, 110}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(complexToReal.im, reactivePower) annotation(Line(points = {{-24, 82}, {-24, 90}, {60, 90}, {60, 110}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(mechanicalPowerSensor.flange_b, inertia.flange_a) annotation(Line(points = {{-20, 0}, {40, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(inertia.flange_b, flange_a) annotation(Line(points = {{60, 0}, {100, 0}}, color = {0, 0, 0}, smooth = Smooth.None));
      annotation(defaultComponentName = "generator", Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-50, 60}, {70, -60}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {213, 255, 170}), Rectangle(extent = {{-50, 60}, {-70, -60}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {128, 128, 128}), Rectangle(extent = {{70, 10}, {90, -10}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {95, 95, 95}), Rectangle(extent = {{-50, 70}, {30, 50}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-60, -90}, {-50, -90}, {-20, -20}, {30, -20}, {60, -90}, {70, -90}, {70, -100}, {-60, -100}, {-60, -90}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>Variable speed generator with 100% efficiency and no loss.
The mechanical power is directly converted into an equivalent three phase electric power.
The generator has a torque input which is directly converted into a
physical signal of the rotational connector.
</p>
</html>"));
    end GenericVariableSpeedGeneratorElectrical;

    model PitchWindTurbine "Wind turbine with pitch input"
      extends WindPowerPlants.Interfaces.BaseWindTurbine;
      Real cp "Power coefficient";
      Modelica.SIunits.Power power "Power of flange_a";
      Modelica.SIunits.Power powerWind "Power of wind";
      Modelica.Blocks.Interfaces.RealInput beta "Pitch angle (deg)" annotation(Placement(transformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.BooleanOutput limit "True if power limit is reached" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {0, -110})));
      Modelica.Blocks.Interfaces.RealOutput lambda "Tip speed ratio" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {-60, -110})));
      Modelica.Blocks.Interfaces.RealOutput w "Angular velocity of flange" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {60, -110})));
    equation
      // Tip speed ratio
      lambda * v = w * D / 2;
      // Internal quantity
      cp = WindPowerPlants.Functions.cpVal(turbineData, lambda, beta);
      // Power of wind
      powerWind = 0.5 * Modelica.Constants.pi * rho * (D / 2) ^ 2 * v ^ 3;
      // Power harvested by power coefficient
      power = max(0, cp * powerWind);
      // POWER LIMITING RANGE
      // Set boolean indicator if power limiting range is reached
      limit = power >= powerMax or pre(limit) and power >= 0.99 * powerMax;
      // Angular velocity
      w = der(phi);
      // Power balance
      power = tau * w;
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), Documentation(info = "<html>
<p>The wind turbine model determined the power coefficient
<img src=\"modelica://WindPowerPlants/Resources/Images/cp.png\"/>
as a function of the input <img src=\"modelica://WindPowerPlants/Resources/Images/beta.png\"/> and the quantitiy
<img src=\"modelica://WindPowerPlants/Resources/Images/lambda1.png\"/>.
The coefficients <img src=\"modelica://WindPowerPlants/Resources/Images/c1...c6.png\"/>
are determined from a parameter record in
<a href=\"modelica://WindPowerPlantsRecords.Turbine\">Turbine</a> </p>
</html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Line(origin = {-59.6474, -0.17987}, points = {{-0.706547, 0.533853}, {-20.3526, 80.1799}, {-0.3526, 100.18}, {19.6474, 80.1799}, {-20.3526, -79.8201}, {-0.3526, -99.8201}, {21.6474, -79.8201}, {0.00141724, 0.179871}}), Ellipse(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 10}, {-60, -10}}, endAngle = 360), Rectangle(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-80, 10}, {100, -10}}), Text(origin = {0, 121}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name"), Line(points = {{0, 40}, {0, -100}}, color = {255, 0, 255}, smooth = Smooth.None), Line(points = {{-40, 20}, {-38, 22}, {20, 80}, {80, 80}}, color = {255, 0, 255}, smooth = Smooth.None)}));
    end PitchWindTurbine;

    model PitchWindTurbineControlled "Wind turbine with controlled pitch angle"
      extends WindPowerPlants.Interfaces.BaseWindTurbine;
      parameter WindPowerPlants.Records.TurbineControlData.Generic turbineControlData "Turbine control" annotation(choicesAllMatching = true);
      parameter Modelica.SIunits.Time T = 1E-3 "Power limit control time constant";
      Modelica.Blocks.Interfaces.BooleanOutput limit "True if power limit is reached" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {0, -110})));
      PitchWindTurbine turbine(final rho = rho, final D = D, final powerMax = powerMax, final turbineData = turbineData) annotation(Placement(transformation(extent = {{60, 50}, {80, 70}})));
      Modelica.Blocks.Logical.Switch switch1 annotation(Placement(transformation(extent = {{-60, -50}, {-40, -70}})));
      Modelica.Blocks.Sources.RealExpression powerDeviation(final y = turbine.power / powerMax - 1) annotation(Placement(transformation(extent = {{-100, -90}, {-80, -70}})));
      Modelica.Blocks.Sources.Constant zero(final k = 0) annotation(Placement(transformation(extent = {{-100, -60}, {-80, -40}})));
      Modelica.Blocks.Continuous.LimIntegrator limIntegrator(final k = 1 / T, final outMax = turbineControlData.betaMax, final outMin = turbineControlData.betaMin) annotation(Placement(transformation(extent = {{-20, -70}, {0, -50}})));
      Modelica.Blocks.Logical.Switch switch2 annotation(Placement(transformation(extent = {{20, -40}, {40, -60}})));
      Blocks.TurbineControlVal turbineControlVal(final turbineControlData = turbineControlData) annotation(Placement(transformation(extent = {{-20, -40}, {0, -20}})));
      Modelica.Blocks.Nonlinear.Limiter limiter(final uMax = turbineControlData.betaMax, final uMin = turbineControlData.betaMin) annotation(Placement(transformation(extent = {{10, 10}, {-10, -10}}, rotation = 270, origin = {50, -30})));
      Modelica.Blocks.Interfaces.RealOutput lambda "Tip speed ratio" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {-60, -110})));
      Modelica.Blocks.Interfaces.RealOutput w "Angular velocity of flange" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {60, -110})));
      Modelica.Blocks.Continuous.FirstOrder slewRateLimiter(k = 1, T = 1) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {50, 10})));
    equation
      connect(v, turbine.v) annotation(Line(points = {{-110, 4.44089e-16}, {-70, 4.44089e-16}, {-70, 60}, {59, 60}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(turbine.flange_a, flange_a) annotation(Line(points = {{80, 60}, {100, 60}, {100, 4.44089e-16}}, color = {0, 0, 0}, smooth = Smooth.None));
      connect(turbine.limit, switch1.u2) annotation(Line(points = {{70, 49}, {70, -10}, {-70, -10}, {-70, -60}, {-62, -60}}, color = {255, 0, 255}, smooth = Smooth.None));
      connect(powerDeviation.y, switch1.u1) annotation(Line(points = {{-79, -80}, {-74, -80}, {-74, -68}, {-62, -68}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(zero.y, switch1.u3) annotation(Line(points = {{-79, -50}, {-74, -50}, {-74, -52}, {-62, -52}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(switch1.y, limIntegrator.u) annotation(Line(points = {{-39, -60}, {-22, -60}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(turbine.limit, switch2.u2) annotation(Line(points = {{70, 49}, {70, -10}, {12, -10}, {12, -50}, {18, -50}}, color = {255, 0, 255}, smooth = Smooth.None));
      connect(limIntegrator.y, switch2.u1) annotation(Line(points = {{1, -60}, {8, -60}, {8, -58}, {18, -58}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(turbineControlVal.beta, switch2.u3) annotation(Line(points = {{1, -30}, {8, -30}, {8, -42}, {18, -42}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(turbine.limit, limit) annotation(Line(points = {{70, 49}, {70, -80}, {4.44089e-16, -80}, {4.44089e-16, -110}}, color = {255, 0, 255}, smooth = Smooth.None));
      connect(limiter.u, switch2.y) annotation(Line(points = {{50, -42}, {50, -50}, {41, -50}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(turbine.w, w) annotation(Line(points = {{76, 49}, {76, -90}, {60, -90}, {60, -110}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(turbine.lambda, turbineControlVal.lambda) annotation(Line(points = {{64, 49}, {64, 40}, {-30, 40}, {-30, -30}, {-22, -30}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(turbine.lambda, lambda) annotation(Line(points = {{64, 49}, {64, 40}, {-30, 40}, {-30, -90}, {-60, -90}, {-60, -110}, {-60, -110}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(limiter.y, slewRateLimiter.u) annotation(Line(points = {{50, -19}, {50, -2}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(slewRateLimiter.y, turbine.beta) annotation(Line(points = {{50, 21}, {50, 54}, {59, 54}}, color = {0, 0, 127}, smooth = Smooth.None));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), Documentation(info = "<html>
<p>The controlled wind turbine model uses the optimal beta to achieve the optimum power coefficient cp.
In the power limiting range the pitch angle is controlled such way that the maximum power is not exceeded.
The model is based on
<a href=\"modelica://WindPowerPlants.Components.PitchWindTurbine\">PitchWindTurbine</a>.
</p>
</html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Line(origin = {-59.6474, -0.17987}, points = {{-0.706547, 0.533853}, {-20.3526, 80.1799}, {-0.3526, 100.18}, {19.6474, 80.1799}, {-20.3526, -79.8201}, {-0.3526, -99.8201}, {21.6474, -79.8201}, {0.00141724, 0.179871}}), Ellipse(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 10}, {-60, -10}}, endAngle = 360), Rectangle(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-80, 10}, {100, -10}}), Text(origin = {0, 121}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name"), Line(points = {{60, -100}, {60, -20}}, color = {0, 0, 127}, smooth = Smooth.None), Line(points = {{40, -20}, {80, -20}}, color = {0, 0, 127}, smooth = Smooth.None), Line(points = {{40, 20}, {80, 20}}, color = {0, 0, 127}, smooth = Smooth.None), Line(points = {{0, 40}, {0, -100}}, color = {255, 0, 255}, smooth = Smooth.None), Line(points = {{-40, 20}, {-38, 22}, {20, 80}, {80, 80}}, color = {255, 0, 255}, smooth = Smooth.None)}));
    end PitchWindTurbineControlled;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Components;

  package Functions "Functions"
    extends Modelica.Icons.Package;

    function cpVal "Power coefficient"
      extends Modelica.Icons.Function;
      input WindPowerPlants.Records.TurbineData.Generic turbineData "Wind turbine record";
      input Real lambda "Tip speed ratio";
      input Real beta "Pitch angle in degree";
      output Real cp "Power coefficient";
    protected
      Real lambda1 "Internal lambda";
    algorithm
      lambda1 := 1 / (1 / (lambda + 0.089) - 0.035 / (beta ^ 3 + 1));
      cp := turbineData.c1 * (turbineData.c2 / lambda1 - turbineData.c3 * beta - turbineData.c4) * exp(-turbineData.c5 / lambda1) + turbineData.c6 * lambda1;
      annotation(Documentation(info = "<html>
This function determines the power coefficient cp from <code>lambda</code>, <code>beta</code>
and the wind turbine coefficients of
<a href=\"WindPowerPlants.Records.TurbineControlData.Generic\">TurbineControlData</a>.
</html>"));
    end cpVal;

    function turbineControlVal "Evaluation of polynominal for given input"
      extends Modelica.Icons.Function;
      input WindPowerPlants.Records.TurbineControlData.Generic turbineControlData "turbine control record";
      input Real lambda "Evaluation variable";
      output Real beta "Approximated pitch angle";
    algorithm
      beta := 0;
      if lambda >= turbineControlData.lambdaMin and lambda <= turbineControlData.lambdaMax then
        for k in 1:size(turbineControlData.p, 1) loop
          beta := beta + turbineControlData.p[k] * lambda ^ (size(turbineControlData.p, 1) - k);
        end for;
      end if;
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>This function evaluates the polynomial approximation of the optimum power coefficient cp
storted in the turbine record
<a href=\"WindPowerPlants.Records.TurbineControlData.Generic\">TurbineControlData</a>.
</p>
</html>"));
    end turbineControlVal;
  end Functions;

  package Blocks "Blocks"
    extends Modelica.Icons.Package;

    model AngularVelocity "Calculates the angular velocity from tip speed ratio and wind speed"
      parameter Modelica.SIunits.Length D = 101 "Diameter of wind turbine";
      Modelica.Blocks.Interfaces.RealInput v "Wind speed" annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput w "Angular velocity" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
      Modelica.Blocks.Interfaces.RealInput lambda "Tip speed ratio" annotation(Placement(visible = true, transformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      lambda * v = w * D / 2;
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 20}, {20, -20}}, lineColor = {95, 95, 95}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<html>
<p>This block calculates the angular velocity <code>w</code>
from tip speed ratio <code>lambda</code>
and wind speed <code>v</code> according to </p>
<p>
<img src=\"modelica://WindPowerPlants/Resources/Images/lambda.png\"/>.
</p>
</html>"));
    end AngularVelocity;

    model AngularVelocityController "Controller of the angular velocity incorporating tip speed ratio and wind speed"
      parameter WindPowerPlants.Records.TurbineControlData.Generic turbineControlData "Wind turbine record" annotation(choicesAllMatching = true);
      parameter Modelica.SIunits.Length D = 90 "Diameter of wind turbine";
      parameter Real k = 120 "Controller gain";
      parameter Modelica.SIunits.Time Ti = 25 "Controller time constant";
      parameter Modelica.SIunits.Torque tauRef = 0 "Reference generator torque > 0";
      parameter Real limitMot = 0.05 "Motoring torque limit w.r.t. tauRef";
      parameter Modelica.SIunits.Velocity vMin = 4 "Minimum wind speed of operation";
      Modelica.Blocks.Interfaces.RealInput v "Wind speed" annotation(Placement(visible = true, transformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput tau "Reference Torque" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
      Modelica.Blocks.Interfaces.RealInput lambda "Tip speed ratio" annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Blocks.AngularVelocity angularVelocity(final D = D) annotation(Placement(transformation(extent = {{-40, -70}, {-20, -50}})));
      Modelica.Blocks.Math.Feedback feedback annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {-80, -30})));
      Modelica.Blocks.Sources.Constant lambdaOpt(final k = turbineControlData.lambdaOpt) annotation(Placement(visible = true, transformation(extent = {{0, -20}, {-20, 0}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant lambdaZero(k = 0) annotation(Placement(visible = true, transformation(origin = {0, 40}, extent = {{0, -20}, {-20, 0}}, rotation = 0)));
      Modelica.Blocks.Logical.Switch switch annotation(Placement(visible = true, transformation(origin = {-50, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Logical.LessThreshold threshold1(threshold = vMin) annotation(Placement(visible = true, transformation(origin = {20, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Continuous.LimPID PID(controllerType = Modelica.Blocks.Types.SimpleController.PI, final k = k, final Ti = Ti, final yMax = limitMot * tauRef, final yMin = -tauRef) annotation(Placement(transformation(extent = {{0, -70}, {20, -50}})));
      Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {100, -80}, extent = {{0, -20}, {-20, 0}}, rotation = 0)));
    equation
      connect(threshold1.u, v) annotation(Line(points = {{32, 10}, {40, 10}, {40, -80}, {-80, -80}, {-80, -60}, {-110, -60}}, color = {0, 0, 127}));
      connect(threshold1.y, switch.u2) annotation(Line(points = {{9, 10}, {-38, 10}}, color = {255, 0, 255}));
      connect(switch.y, feedback.u1) annotation(Line(points = {{-61, 10}, {-80, 10}, {-80, -22}}, color = {0, 0, 127}));
      connect(switch.u3, lambdaOpt.y) annotation(Line(points = {{-38, 2}, {-28, 2}, {-28, -10}, {-21, -10}}, color = {0, 0, 127}));
      connect(switch.u1, lambdaZero.y) annotation(Line(points = {{-38, 18}, {-28, 18}, {-28, 30}, {-21, 30}}, color = {0, 0, 127}));
      connect(angularVelocity.v, v) annotation(Line(points = {{-41, -60}, {-110, -60}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(feedback.y, angularVelocity.lambda) annotation(Line(points = {{-80, -39}, {-80, -54}, {-41, -54}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(feedback.u2, lambda) annotation(Line(points = {{-88, -30}, {-100, -30}, {-100, 0}, {-110, 0}, {-110, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(angularVelocity.w, PID.u_s) annotation(Line(points = {{-19, -60}, {-2, -60}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(PID.y, tau) annotation(Line(points = {{21, -60}, {60, -60}, {60, 4.44089e-16}, {110, 4.44089e-16}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(zero.y, PID.u_m) annotation(Line(points = {{79, -90}, {10, -90}, {10, -72}}, color = {0, 0, 127}, smooth = Smooth.None));
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 20}, {20, -20}}, lineColor = {95, 95, 95}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<html>
<p>This model controls the angular velocity <code>w</code> based
on the tip speed ration <code>lambda</code> and wind speed
<code>v</code>. For wind speeds below the cut in wind speed, <code>vMin</code>, zero angular
velocity is controlled. Otherwise, it is intended to control such a way that
<code>lambda</code> is and optimum; see
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Eberhart2015</a>].
</p>
</html>"));
    end AngularVelocityController;

    block LogTerminal "Log data at terminal time"
      parameter String preString = "Variable = " "String prior to numeric value";
      parameter String postString = "unit" "Unit of numeric value";
      parameter Real gain = 1 "Gain of input signal";
      discrete Real terminalValue(final start = 0) "Terminal value including gain";
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}), iconTransformation(extent = {{-140, -20}, {-100, 20}})));
    equation
      when terminal() then
        terminalValue = gain * u;
        Modelica.Utilities.Streams.print(preString + String(terminalValue) + postString);
      end when;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 102}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-58, 60}, {62, -60}}, lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-40, -40}, {40, 40}}, color = {255, 0, 0}), Line(points = {{-40, 40}, {40, -40}}, color = {255, 0, 0}), Text(origin = {0, 123}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})), Documentation(info = "<html>
<p>This block writes a value to the Modelica log file once the simulation terminates. The output to the Modelica log file consists of:
<ul>
<li>a string written prior to the numeric value</li>
<li>a numeric value being equal to the input signal times the <code>gain</code> at the terminatation time of the simulation</li>
<li>a string written after the numeric value</li>
</p>
</html>"));
    end LogTerminal;

    model SpeedAdaptor
      parameter Modelica.SIunits.Height hin = 10 "Height of input speed vin";
      parameter Modelica.SIunits.Height hout = 70 "Height of output speed vout";
      parameter Modelica.SIunits.Length roughness = 0.1 "Roughness length";
      Modelica.Blocks.Interfaces.RealInput vin "Input velocity" annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput vout "Output velocity" annotation(Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    equation
      vout = vin * log(hout / roughness) / log(hin / roughness);
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-98, -98}, {98, 98}, {98, 98}}), Text(origin = {-18, 118}, lineColor = {0, 0, 255}, extent = {{-82, 16}, {118, -6}}, textString = "%name")}), Documentation(info = "<html>
<p>
This model transformes wind speeds with respect of height <code>hin</code>
to wind speeds of height <code>hout</code>.</p>
<pre>
  vout = vin * log(hout / roughness) / log(hin / roughness)
</pre>
<p>Typical <code>roughness</code> lengths can be obtained from
<a href=\"https://energypedia.info/wiki/Estimation_of_Wind_Energy_Production#Roughness\">https://energypedia.info/</a>
</p>
</html>"));
    end SpeedAdaptor;

    model TipSpeedRatio "Determines tip speed ratio"
      parameter Modelica.SIunits.Length D = 101 "Diameter of wind turbine";
      Modelica.Blocks.Interfaces.RealInput v "Wind speed" annotation(Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput lambda "Tip speed ratio" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
      Modelica.Blocks.Interfaces.RealInput w "Angular velocity" annotation(Placement(visible = true, transformation(origin = {-110, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    equation
      lambda = D / 2 * w / v;
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(origin = {0.3526, -0.17987}, points = {{-0.706547, 0.533853}, {-20.3526, 80.1799}, {-0.3526, 100.18}, {19.6474, 80.1799}, {-20.3526, -79.8201}, {-0.3526, -99.8201}, {21.6474, -79.8201}, {0.00141724, 0.179871}})}), Documentation(info = "<html>
<p>
Tip speed ratio is determined from wind speed <code>v</code> and
the angular velocity <code>w</code> by means of:
</p>
<p><img src=\"modelica://WindPowerPlants/Resources/Images/lambda.png\"/>
</p>
</html>"));
    end TipSpeedRatio;

    model TurbineControlVal "Optimum beta determined from control data"
      parameter WindPowerPlants.Records.TurbineControlData.Generic turbineControlData "Wind turbine record";
      Modelica.Blocks.Interfaces.RealInput lambda "Tip speed ratio" annotation(Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput beta "Pitch angle" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
    equation
      beta = WindPowerPlants.Functions.turbineControlVal(turbineControlData = turbineControlData, lambda = lambda);
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-60, -60}, {60, -60}}, color = {0, 0, 127}, smooth = Smooth.None), Polygon(points = {{60, -60}, {40, -56}, {40, -64}, {60, -60}}, lineColor = {0, 0, 127}, smooth = Smooth.None, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-60, -60}, {-60, 60}}, color = {0, 0, 127}, smooth = Smooth.None), Polygon(points = {{-60, 60}, {-64, 40}, {-56, 40}, {-60, 60}}, lineColor = {0, 0, 127}, smooth = Smooth.None, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-52, -42}, {-40, -28}, {-32, -14}, {-26, 0}, {-22, 14}, {-18, 28}, {-14, 38}, {-8, 40}, {-4, 38}, {4, 24}, {12, 4}, {20, -26}, {24, -60}}, color = {0, 0, 127}, smooth = Smooth.None), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<html>
<p>
In this model the actual pitch angle <code>beta</code> is determined from the actual
tip speed ratio <code>lambda</code> using function
<a href=\"modelica://WindPowerPlants.Functions.turbineControlVal\">turbineControlVal</a>. The turbe specific parameters of this function are retrieved from
<a href=\"modelica://WindPowerPlants.Records.TurbineControlData.Generic\">records</a>.
</p>
</html>"));
    end TurbineControlVal;

    model TorqueLimiter
      parameter Modelica.SIunits.Torque tauRef "Reference torque";
      parameter Modelica.SIunits.AngularVelocity wRef "Reference angular velocity";
      parameter Real linear = 0.02 "Linear range for w < wRef*linear";
      Modelica.Blocks.Interfaces.RealInput tau "Torque" annotation(Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput tauLimited "Limited Torque" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
      Modelica.Blocks.Interfaces.RealInput w "rotational speed" annotation(Placement(visible = true, transformation(origin = {0, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 270), iconTransformation(origin = {0, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
    equation
      tauLimited = if w > 0 and w < linear * wRef then if tau < 0 then tau * abs(w) / (linear * wRef) else tau elseif w <= 0 then if tau < 0 then tau * abs(w) / wRef else tau else tau;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, -60}, {-40, -20}, {40, -20}, {80, -60}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{0, 102}, {0, 20}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{-80, 60}, {-40, 20}, {40, 20}, {80, 60}}, color = {0, 0, 0}, smooth = Smooth.None)}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>
The torque output of the angular velocity control is limited
to avoid significant dynamics around zero speed and
for negative speeds. Since the electric machine is operated
as generator, the mechanical power is negative.
The generator is operated at positive angular
speed <code>w</code> and thus torque <code>tau</code> is negative. Torque limitation,
however, is implemented as function of speed.
The characteristic of the torque limiter is shown the figure below
for the input torque <code>tau = −10kNm</code> and a torque limit of
<code>tauRef = 10kNm</code>. However, In the investigated case the reference
speed <code>wRef = 50*pi rad/s</code>. For positive speeds
greater than <code>linear = 2%</code> of the reference speed the torque is not
limited. The range between zero angular speed and 2%
of the reference speed torque is limited by the steep linear
curve shown in the figure below. In the negative speed range -
which shall never be reached - torque is limited linearly
towards the negative reference angular velocity.
</p>
<P>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <tr>
    <td>
      <img src=\"modelica://WindPowerPlants/Resources/Images/torquelimiter.png\"
           alt=\"torquelimiter.png\">
    </td>
  </tr>
  <caption align=\"bottom\">Torque limitation as function of angular velocity</caption>
</table>
</p>
</html>"));
    end TorqueLimiter;

    block TriangleAndRamp "Multiple steps"
      parameter Modelica.SIunits.Time T = 1 "Total time of varying outputs";
      parameter Integer stepNumber = 5 "Number of steps";
      parameter Real stepHeight = 1 "Total step height";
      parameter Real stepOffset = 0 "Offset";
      parameter Modelica.SIunits.Time startTime = 0 "Start time";
      parameter Real triangleHeight = 1 "Height of triangle output";
      parameter Real triangleOffset = 0 "Offsett of triangle output";
      Modelica.Blocks.Sources.Ramp ramp(final startTime = startTime, final height = stepNumber - 1, final duration = T * (stepNumber - 1) / stepNumber, final offset = 0) annotation(Placement(transformation(extent = {{-100, 0}, {-80, 20}})));
      Modelica.Blocks.Math.RealToInteger realToInteger annotation(Placement(transformation(extent = {{-40, 0}, {-20, 20}})));
      Modelica.Blocks.Math.IntegerToReal integerToReal annotation(Placement(transformation(extent = {{-10, 0}, {10, 20}})));
      Modelica.Blocks.Math.Feedback feedback annotation(Placement(transformation(extent = {{-70, 0}, {-50, 20}})));
      Modelica.Blocks.Sources.Constant const(final k = 0.5) annotation(Placement(transformation(extent = {{-100, -40}, {-80, -20}})));
      Modelica.Blocks.Sources.Constant constantOffset(final k = stepOffset) annotation(Placement(transformation(extent = {{20, 40}, {40, 60}})));
      Modelica.Blocks.Math.Add add annotation(Placement(transformation(extent = {{52, 0}, {72, 20}})));
      Modelica.Blocks.Math.Gain gain(final k = stepHeight / (stepNumber - 1)) annotation(Placement(transformation(extent = {{20, 0}, {40, 20}})));
      Modelica.Blocks.Sources.Trapezoid trapezoid(final amplitude = triangleHeight, final rising = T / stepNumber / 2, final width = 0, final falling = T / stepNumber / 2, final period = T / stepNumber, final nperiod = stepNumber, final offset = triangleOffset, final startTime = startTime) annotation(Placement(transformation(extent = {{60, -70}, {80, -50}})));
      Modelica.Blocks.Interfaces.RealOutput step annotation(Placement(transformation(extent = {{100, 50}, {120, 70}})));
      Modelica.Blocks.Interfaces.RealOutput triangle annotation(Placement(transformation(extent = {{100, -70}, {120, -50}})));
    equation
      connect(realToInteger.y, integerToReal.u) annotation(Line(points = {{-19, 10}, {-12, 10}}, color = {255, 127, 0}, smooth = Smooth.None));
      connect(ramp.y, feedback.u1) annotation(Line(points = {{-79, 10}, {-68, 10}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(feedback.y, realToInteger.u) annotation(Line(points = {{-51, 10}, {-42, 10}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(const.y, feedback.u2) annotation(Line(points = {{-79, -30}, {-60, -30}, {-60, 2}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(integerToReal.y, gain.u) annotation(Line(points = {{11, 10}, {18, 10}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(constantOffset.y, add.u1) annotation(Line(points = {{41, 50}, {44, 50}, {44, 16}, {50, 16}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(gain.y, add.u2) annotation(Line(points = {{41, 10}, {44, 10}, {44, 4}, {50, 4}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(add.y, step) annotation(Line(points = {{73, 10}, {90, 10}, {90, 60}, {110, 60}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(trapezoid.y, triangle) annotation(Line(points = {{81, -60}, {110, -60}}, color = {0, 0, 127}, smooth = Smooth.None));
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-60, 40}, {-20, 40}, {-20, 60}, {20, 60}, {20, 80}, {60, 80}}, color = {0, 0, 255}, smooth = Smooth.None), Line(points = {{-58, -80}, {-40, -40}, {-20, -80}, {0, -40}, {20, -80}, {40, -40}, {60, -80}}, color = {0, 0, 255}, smooth = Smooth.None)}), Documentation(info = "<html>
<p>The step output starts from <code>stepOffset</code> and increases to <code>stepOffset + stepHeight</code> in <code>stepNumber</code>steps. The total duration of all step changes is equal to <code>T</code>. </p>
<p>During each step the <code>triangle</code> output is increased from
<code>triangleOffset</code> to <code>triangleOffset + triangleHeight</code>
and back to <code>triangleOffset</code>.</p>
<p>This way a variable sweep (<code>triangleOffset</code>) can be performed for different
stepwise changed variables (<code>step</code>).
</html>"));
    end TriangleAndRamp;
  end Blocks;

  package Records "Data records"
    extends Modelica.Icons.Package;

    package TurbineControlData "Optimum pitch angle turbine control"
      extends Modelica.Icons.Package;

      record Generic "Generic turbine control data"
        extends Modelica.Icons.Record;
        parameter Real p[:] "Polynominal coefficients";
        parameter Real lambdaMin "Minimum tip speed ratio of control range";
        parameter Real lambdaMax "Maximum tip speed ratio of control range";
        parameter Real lambdaOpt "Optimum tip speed ratio, matching betaOpt";
        parameter Real betaMin "Minimum pitch angle";
        parameter Real betaMax "Maximum pitch angle";
        parameter Real betaOpt "Optimum pitch angle, matching lambdaOpt";
        annotation(Documentation(info = "<html>
<p>
</p>For <code>lambdaMin &lt;= lambda &lt;= lambdaMax</code> the pitch angle <code>beta<code> is approximated by a polynom</p>
<p>
<pre>
  beta = sum (lambda^(n-k+1) * p[k] for k in 1:n)
</pre>
</p>
<p>where <code>n-1</code> is the degree of the polynom. The optimum power coefficient is indicated by <code>beta = betaOpt </code> and <code>lambda = lambdaOpt</code>.</p>
<p>The polynominal parameters can be calculated by the Octave script
<a href=\"modelica://WindPowerPlants/Octave/cpcont.m>cpcont.m</a>.
</p>
</html>"));
      end Generic;

      record Heier2009 "Turbine control data of [Heier2009]"
        extends Generic(final p = {0.00212298309850983, -0.10552111636622796, 1.79931615238508824, -8.34638029169715701}, final lambdaMin = 8.98, final lambdaMax = 18.53, final lambdaOpt = 7.87, final betaMin = 0, final betaMax = 90, final betaOpt = 0);
        annotation(Documentation(info = "<html>
<p>Wind turbine control parameters of
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Heier2009</a>].
</p></html>"));
      end Heier2009;

      record Allagui2013 "Turbine control data of [Allagui2013]"
        extends Generic(final p = {-2.72813147692429e-05, -1.41541287898308e-02, 5.49622742151171e-01, -2.96334696366955e+00}, final lambdaMin = 9.38, final lambdaMax = 30, final lambdaOpt = 28.56, final betaMin = 0, final betaMax = 90, final betaOpt = 0.14);
        annotation(Documentation(info = "<html>
<p>Wind turbine control parameters of
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Allagui2013</a>].
</p></html>"));
      end Allagui2013;

      record Thongam2009 "Turbine control data of [Thongam2009]"
        extends Generic(final p = {0.00181568948139207, -0.08293733085338961, 1.28855124643962093, -4.65888550563144754}, final lambdaMin = 7.29, final lambdaMax = 90, final lambdaOpt = 6.24, final betaMin = 0, final betaMax = 90, final betaOpt = 0);
        annotation(Documentation(info = "<html>
<p>Wind turbine control parameters of
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Thongam2009</a>].
</p></html>"));
      end Thongam2009;
    end TurbineControlData;

    package TurbineData "Turbine records"
      extends Modelica.Icons.Package;

      record Generic "Gerneric wind turbine record"
        extends Modelica.Icons.Record;
        parameter Real c1 "c1 coefficient";
        parameter Real c2 "c2 coefficient";
        parameter Real c3 "c3 coefficient";
        parameter Real c4 "c4 coefficient";
        parameter Real c5 "c5 coefficient";
        parameter Real c6 "c6 coefficient";
        annotation(Documentation(info = "<html>
<p>Wind turbine parameters to calculate the power coefficient
<img src=\"modelica://WindPowerPlants/Resources/Images/cp.png\"/> by means of:</p>
<p>
<img src=\"modelica://WindPowerPlants/Resources/Images/cpturbine.png\"/>
</p>
<p>
<img src=\"modelica://WindPowerPlants/Resources/Images/lambda1turbine.png\"/>
</p>
</html>"));
      end Generic;

      record Heier2009 "Wind turbine [Heier2009]"
        extends WindPowerPlants.Records.TurbineData.Generic(final c1 = 0.5, final c2 = 116, final c3 = 0.4, final c4 = 5, final c5 = 21, final c6 = 0);
        annotation(Documentation(info = "<html>
<p>Wind turbine parameters of
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Heier2009</a>].
</p></html>"));
      end Heier2009;

      record Allagui2013 "Wind turbine [Allagui2013]"
        extends WindPowerPlants.Records.TurbineData.Generic(final c1 = 0.22, final c2 = 116, final c3 = 0.4, final c4 = 5, final c5 = 12.5, final c6 = 0);
        annotation(Documentation(info = "<html>
<p>Wind turbine parameters of
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Allagui2013</a>].
</p></html>"));
      end Allagui2013;

      record Thongam2009 "Wind turbine [Thongam2009]"
        extends WindPowerPlants.Records.TurbineData.Generic(final c1 = 0.5176, final c2 = 116, final c3 = 0.4, final c4 = 5, final c5 = 21, final c6 = 0.006795);
        annotation(Documentation(info = "<html>
<p>Wind turbine parameters of
[<a href=\"modelica://WindPowerPlants.UsersGuide.References\">Thongam2009</a>].
</p></html>"));
      end Thongam2009;
    end TurbineData;
  end Records;

  package WindSources "Wind sources"
    extends Modelica.Icons.Package;

    block Rayleigh "Rayleigh wind distributution"
      import Modelica.Constants.pi;
      parameter Modelica.SIunits.Velocity vMean = 5 "Mean velocity";
      parameter Modelica.SIunits.Velocity vMax = 20 "Maximum velocity (v<=vMax)";
      parameter Integer n = 10 "Number of intervals";
      parameter Modelica.SIunits.Time T = 100 "Time period";
      parameter Boolean increaseDecrease = false "If true, altering velocity increase and decrease after one period";
      final parameter Modelica.SIunits.Velocity dv = vMax / n "Velocity increment";
      final parameter Modelica.SIunits.Velocity vDiscrete[n] = array(k * dv for k in 1:n) "Discrete Velocities";
      final parameter Real rayleigh[n] = array(dv * pi / 2 * vDiscrete[k] / vMean ^ 2 * exp(-pi / 4 * vDiscrete[k] ^ 2 / vMean ^ 2) for k in 1:n) "Rayleigh probaility";
      final parameter Real rayleigh_sum = sum(rayleigh) "Sum of all rayleigh probabilities";
      final parameter Real probability[n] = rayleigh / rayleigh_sum "Probabilities of velocities";
      final parameter Modelica.SIunits.Time tDiscrete[n] = probability * T "Discrete durations";
      // Variables
      Integer counter(final start = 0) "Counter of repeating velocity distribution after time T";
      Integer index(final start = 1) "Velocity index";
      Integer increment(final start = 1) "Increment of index";
      Modelica.SIunits.Time tNext(final start = tDiscrete[1]) "Time of next event";
      discrete Modelica.SIunits.Velocity velocity(start = vDiscrete[1]) "Velocity";
      Modelica.Blocks.Interfaces.RealOutput v "Wind velocity" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
    algorithm
      when time >= tNext then
        index := index + increment;
        if index > n then
          if increaseDecrease then
            increment := -1;
            index := n;
          else
            index := 1;
          end if;
          counter := counter + 1;
        end if;
        if index < 1 then
          increment := +1;
          index := 1;
          counter := counter + 1;
        end if;
        velocity := vDiscrete[index];
        tNext := time + tDiscrete[index];
      end when;
      v := velocity;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, -38}, {-64, -18}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-56, -38}, {-44, 14}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-36, -38}, {-24, 38}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-16, -38}, {-4, 20}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{4, -38}, {16, 2}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{24, -38}, {36, -10}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{44, -38}, {56, -16}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{64, -38}, {76, -22}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Text(extent = {{20, 80}, {80, 20}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, textString = "R"), Line(points = {{-80, -40}, {80, -40}}, color = {0, 0, 255}, smooth = Smooth.None), Line(points = {{-80, -40}, {-80, 40}, {-86, 40}, {-80, 60}, {-74, 40}, {-80, 40}}, color = {0, 0, 255}, smooth = Smooth.None), Text(origin = {0, 123}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>This block provides a discrete velocity distribution in the time domain accoring to a Rayleigh distribution</p>
<p><img src=\"modelica://WindPowerPlants/Resources/Images/RayleighFormula.png\"/></p>
<p>where <img src=\"modelica://WindPowerPlants/Resources/Images/vMean.png\"/> is the approximate mean velocity of the distribution. The greater the number of velocity intervals <img src=\"modelica://WindPowerPlants/Resources/Images/n.png\"/> and the greater the maximum velocity, <img src=\"modelica://WindPowerPlants/Resources/Images/vMax.png\"/>, is, the more accurate is the approximation of the mean velocity. The velocity interval is determined by:</p>
<p><img src=\"modelica://WindPowerPlants/Resources/Images/Delta_v.png\"/></p>
<p><br><img src=\"modelica://WindPowerPlants/Resources/Images/Rayleigh.png\"/></p>
<p>The sum of all probabilities <img src=\"modelica://WindPowerPlants/Resources/Images/d.png\"/> is equal to one.</p>
<p>The boolean parameter <code>increaseDecrease</code> indicates wheather</p>
<ul>
<li><code>false</code>: discrete velcocites over time are only increasing in each period <img src=\"modelica://WindPowerPlants/Resources/Images/T.png\"/>, or</li>
<li><code>true</code>: discrete velcocites over time are alternatingly increasing and decreasing, in every other period <img src=\"modelica://WindPowerPlants/Resources/Images/T.png\"/>.</li>
</ul>
</html>"));
    end Rayleigh;

    block RealData "Real wind data from file"
      parameter String fileName = "modelica://WindPowerPlants/Data/EVN01.tx" "File name" annotation(Dialog(group = "Wind data definition", enable = tableOnFile, loadSelector(filter = "Text files (*.txt)", caption = "Open file in which data are present")));
      parameter Modelica.SIunits.Velocity veps(min = 0.001) = 0.01 "Threshold speed greater than zero";
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(final tableOnFile = true, final tableName = "velocity", final fileName = fileName, final extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, final smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, final columns = {2, 3}) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Interfaces.RealOutput v "Wind velocity" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
      Modelica.Blocks.Math.Max threshold annotation(Placement(visible = true, transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const(final k = veps) annotation(Placement(visible = true, transformation(origin = {0, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(combiTimeTable.y[1], threshold.u1) annotation(Line(points = {{11, 0}, {20, 0}, {20, 6}, {38, 6}}, color = {0, 0, 127}));
      connect(const.y, threshold.u2) annotation(Line(points = {{11, -30}, {20, -30}, {20, -6}, {38, -6}, {38, -6}}, color = {0, 0, 127}));
      connect(threshold.y, v) annotation(Line(points = {{61, 0}, {102, 0}, {102, 0}, {110, 0}}, color = {0, 0, 127}));
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-76, -10}, {-72, -4}, {-64, -2}, {-54, -2}, {-46, -4}, {-40, -2}, {-34, 4}, {-26, 8}, {-18, 8}, {-14, 8}}, color = {0, 0, 255}, smooth = Smooth.None), Line(points = {{-76, -10}, {-68, -6}, {-62, -6}, {-52, -10}, {-42, -12}, {-32, -8}, {-26, -4}, {-18, -4}, {-12, -6}, {-4, -10}, {6, -10}, {12, -6}, {20, 2}, {24, 12}, {22, 22}, {16, 26}, {10, 26}, {4, 24}, {-2, 26}, {-12, 24}, {-16, 18}, {-16, 12}, {-14, 8}, {-8, 2}, {0, 0}, {8, 4}, {8, 10}, {4, 14}, {0, 14}}, color = {0, 0, 255}, smooth = Smooth.None), Line(points = {{-74, -10}, {-74, -10}, {-66, -8}, {-58, -12}, {-54, -18}, {-46, -20}, {-36, -18}, {-28, -14}, {-22, -14}, {-16, -18}, {-4, -26}, {6, -26}, {16, -24}, {24, -20}, {28, -16}}, color = {0, 0, 255}, smooth = Smooth.None), Line(points = {{24, 12}, {28, 16}, {38, 20}, {46, 20}, {50, 16}, {52, 10}, {58, 16}, {68, 18}, {76, 14}, {78, 6}, {76, 0}, {70, -4}, {64, -8}, {58, -8}, {56, -16}, {52, -20}, {46, -24}, {36, -24}, {30, -20}, {28, -16}, {28, -6}, {32, 2}, {36, 4}, {40, 4}, {44, 2}, {46, -6}, {44, -12}}, color = {0, 0, 255}, smooth = Smooth.None), Text(origin = {0, 121}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Documentation(info = "<html>
<p>
Real wind data read from file <code>fileName</code>. Zero speeds are not
allowed due to the calculation of the tip speed ratio. Therefore, a threshold
value <code>veps</code>must be indicated.</p>
</html>"));
    end RealData;
  end WindSources;

  package Sources "Sources"
    extends Modelica.Icons.SourcesPackage;

    model IdealRealPower "Ideal three phase power source or sink"
      final parameter Integer m = 3 "Number of phases";
      parameter Modelica.SIunits.Voltage VRef = 1 "Reference line to line voltage";
      parameter Modelica.SIunits.Time T = 1E-3 "Internal control time constant";
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug positivePlug annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      Modelica.Blocks.Interfaces.RealInput power "Real power to be controlled" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}), iconTransformation(extent = {{-140, -20}, {-100, 20}})));
      MSL_322.VariableUnrootedCurrentSource variableCurrentSource(final m = m) annotation(Placement(transformation(extent = {{10, -10}, {-10, 10}}, rotation = 90, origin = {40, 40})));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star star(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {40, 10})));
      MSL_322.PowerSensor powerSensor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {40, 70})));
      Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor potentialSensor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {70, 90})));
      MSL_322.ToSpacePhasor toSpacePhasor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {70, 50})));
      Modelica.Blocks.Math.Feedback feedback annotation(Placement(transformation(extent = {{-80, -30}, {-60, -50}})));
      Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal annotation(Placement(transformation(extent = {{0, 60}, {-20, 80}})));
      Modelica.Blocks.Continuous.Integrator integrator(k = sqrt(3) / VRef / T) annotation(Placement(transformation(extent = {{-48, -50}, {-28, -30}})));
      MSL_322.FromSpacePhasor fromSpacePhasor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, 20})));
      Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolar fromPolar annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -10})));
      Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolar toPolar annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {70, 20})));
      Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground ground annotation(Placement(transformation(extent = {{30, -30}, {50, -10}})));
    equation
      connect(powerSensor.currentP, powerSensor.voltageP) annotation(Line(points = {{40, 80}, {50, 80}, {50, 70}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(powerSensor.voltageN, star.plug_p) annotation(Line(points = {{30, 70}, {20, 70}, {20, 20}, {40, 20}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(potentialSensor.plug_p, positivePlug) annotation(Line(points = {{70, 100}, {4.44089e-16, 100}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(potentialSensor.y, toSpacePhasor.u) annotation(Line(points = {{70, 79}, {70, 62}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(complexToReal.u, powerSensor.y) annotation(Line(points = {{2, 70}, {12, 70}, {12, 78}, {29, 78}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(complexToReal.re, feedback.u2) annotation(Line(points = {{-22, 76}, {-70, 76}, {-70, -32}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(feedback.y, integrator.u) annotation(Line(points = {{-61, -40}, {-50, -40}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(fromSpacePhasor.y, variableCurrentSource.I) annotation(Line(points = {{1.33227e-15, 31}, {1.33227e-15, 40}, {30, 40}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(fromSpacePhasor.u, fromPolar.y) annotation(Line(points = {{0, 8}, {0, 1}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(integrator.y, fromPolar.u[1]) annotation(Line(points = {{-27, -40}, {1, -40}, {1, -22}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(toSpacePhasor.y, toPolar.u) annotation(Line(points = {{70, 39}, {70, 32}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(toPolar.y[2], fromPolar.u[2]) annotation(Line(points = {{70.5, 9}, {70.5, -40}, {-2, -40}, {-2, -22}, {-1, -22}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(power, feedback.u1) annotation(Line(points = {{-120, 0}, {-90, 0}, {-90, -40}, {-78, -40}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(powerSensor.currentP, positivePlug) annotation(Line(points = {{40, 80}, {40, 100}, {0, 100}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(star.pin_n, ground.pin) annotation(Line(points = {{40, 1.33227e-15}, {40, -10}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(powerSensor.currentN, variableCurrentSource.plug_p) annotation(Line(points = {{40, 60}, {40, 50}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(variableCurrentSource.plug_n, star.plug_p) annotation(Line(points = {{40, 30}, {40, 20}}, color = {85, 170, 255}, smooth = Smooth.None));
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-60, 60}, {60, -60}}, lineColor = {0, 0, 255}), Line(points = {{0, 90}, {0, 88}, {0, 60}}, color = {0, 0, 255}, smooth = Smooth.None), Text(extent = {{-40, 40}, {40, -40}}, lineColor = {0, 0, 255}, textString = "P")}), Documentation(info = "<html>
<p>
The ideal real power source is based on a space phasor approach,
where the current and voltage space phasor are aligned.
The reference voltage and the time constant are required to scale the
control behavior of the power source for different reference voltages.
</p>
</html>"));
    end IdealRealPower;

    model IdealRealPowerConductance "Ideal three phase power source or sink based on controlled conductance"
      final parameter Integer m = 3 "Number of phases";
      parameter Modelica.SIunits.Voltage VRef = 1 "Reference line to line voltage";
      parameter Modelica.SIunits.Time T = 1E-3 "Internal control time constant";
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug positivePlug annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      Modelica.Blocks.Interfaces.RealInput power "Real power to be controlled" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}), iconTransformation(extent = {{-140, -20}, {-100, 20}})));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor variableCurrentSource(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {40, 0})));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star star(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {40, -30})));
      MSL_322.PowerSensor powerSensor(final m = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {40, 50})));
      Modelica.Blocks.Math.Feedback feedback annotation(Placement(transformation(extent = {{-80, 10}, {-60, -10}})));
      Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal annotation(Placement(transformation(extent = {{-20, 60}, {-40, 80}})));
      Modelica.Blocks.Continuous.Integrator integrator(k = 3 / VRef / VRef / T) annotation(Placement(transformation(extent = {{-48, -10}, {-28, 10}})));
      Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground ground annotation(Placement(transformation(extent = {{30, -70}, {50, -50}})));
      Modelica.Blocks.Routing.Replicator replicator(final nout = m) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
    equation
      connect(powerSensor.currentP, powerSensor.voltageP) annotation(Line(points = {{40, 60}, {50, 60}, {50, 50}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(powerSensor.voltageN, star.plug_p) annotation(Line(points = {{30, 50}, {20, 50}, {20, -20}, {40, -20}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(variableCurrentSource.plug_p, star.plug_p) annotation(Line(points = {{40, -10}, {40, -20}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(complexToReal.u, powerSensor.y) annotation(Line(points = {{-18, 70}, {0, 70}, {0, 58}, {29, 58}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(complexToReal.re, feedback.u2) annotation(Line(points = {{-42, 76}, {-70, 76}, {-70, 8}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(feedback.y, integrator.u) annotation(Line(points = {{-61, 0}, {-50, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(power, feedback.u1) annotation(Line(points = {{-120, 8.88178e-16}, {-90, 8.88178e-16}, {-90, 0}, {-78, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(powerSensor.currentP, positivePlug) annotation(Line(points = {{40, 60}, {40, 100}, {0, 100}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(powerSensor.currentN, variableCurrentSource.plug_n) annotation(Line(points = {{40, 40}, {40, 10}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(star.pin_n, ground.pin) annotation(Line(points = {{40, -40}, {40, -50}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(integrator.y, replicator.u) annotation(Line(points = {{-27, 0}, {-12, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      connect(replicator.y, variableCurrentSource.G_ref) annotation(Line(points = {{11, 0}, {29, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-60, 60}, {60, -60}}, lineColor = {0, 0, 255}), Line(points = {{0, 90}, {0, 88}, {0, 60}}, color = {0, 0, 255}, smooth = Smooth.None), Text(extent = {{-40, 40}, {40, -40}}, lineColor = {0, 0, 255}, textString = "P"), Ellipse(extent = {{-80, 80}, {80, -80}}, lineColor = {0, 0, 255})}), Documentation(info = "<html>
<p>
The ideal real power source is based on a controlled variable conductor.
The reference voltage and the time constant are required to scale the
control behavior of the power source for different reference voltages.
</p>
</html>"));
    end IdealRealPowerConductance;
  end Sources;

  package Interfaces "Interfaces"
    extends Modelica.Icons.InterfacesPackage;

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
      Modelica.Blocks.Interfaces.RealInput v "Wind velocity" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
      Modelica.Blocks.Interfaces.RealOutput power "Real power" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {60, 110})));
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Polygon(points = {{-2, 26}, {-8, -80}, {8, -80}, {2, 26}, {-2, 26}}, lineColor = {0, 0, 0}, smooth = Smooth.None, fillColor = {213, 255, 170}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-10, 40}, {10, 20}}, lineColor = {0, 0, 0}, fillColor = {135, 135, 135}, fillPattern = FillPattern.Solid), Line(points = {{0, 100}}, color = {0, 0, 0}, smooth = Smooth.None), Polygon(points = {{0, 90}, {-6, 70}, {0, 30}, {6, 70}, {0, 90}}, lineColor = {0, 0, 0}, fillColor = {212, 212, 212}, smooth = Smooth.None, fillPattern = FillPattern.Solid), Polygon(points = {{-28, 48}, {-28, 48}}, lineColor = {0, 0, 0}, smooth = Smooth.None), Polygon(points = {{0, 30}, {38, 18}, {54, 3}, {32, 6}, {0, 30}}, lineColor = {0, 0, 0}, fillColor = {212, 212, 212}, smooth = Smooth.None, fillPattern = FillPattern.Solid), Polygon(points = {{0, 30}, {-36, 14}, {-50, -3}, {-29, 3}, {0, 30}}, lineColor = {0, 0, 0}, fillColor = {212, 212, 212}, smooth = Smooth.None, fillPattern = FillPattern.Solid), Ellipse(extent = {{-5, 35}, {5, 25}}, lineColor = {0, 0, 0}, fillColor = {212, 212, 212}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
<p>Base class of wind power plant</p>
</html>"));
    end BasePlant;

    partial model BaseWindTurbine
      parameter Modelica.SIunits.Density rho = 1.2 "Mass density of air";
      parameter Modelica.SIunits.Length D = 101 "Diameter of wind turbine";
      parameter Modelica.SIunits.Power powerMax = 3.05E6 "Maximum mechanical power to be limited by betaLimit";
      parameter WindPowerPlants.Records.TurbineData.Generic turbineData "Wind turbine data" annotation(choicesAllMatching = true);
      Modelica.SIunits.Torque tau "Torque of flange_a";
      Modelica.SIunits.Angle phi "Angle of flange_a";
      Modelica.Blocks.Interfaces.RealInput v "Wind velocity" annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      // ALIAS VARIABLES
      // Quantities at flange
      tau = -flange_a.tau;
      phi = flange_a.phi;
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), Documentation(info = "<html>
<p>The base class wind turbine model contains relevant connectors, variables and parameters.</p>
</html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Line(origin = {-59.6474, -0.17987}, points = {{-0.706547, 0.533853}, {-20.3526, 80.1799}, {-0.3526, 100.18}, {19.6474, 80.1799}, {-20.3526, -79.8201}, {-0.3526, -99.8201}, {21.6474, -79.8201}, {0.00141724, 0.179871}}), Ellipse(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 10}, {-60, -10}}, endAngle = 360), Rectangle(fillColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-80, 10}, {100, -10}}), Text(origin = {0, 121}, lineColor = {0, 0, 255}, extent = {{-100, 9}, {100, -11}}, textString = "%name")}));
    end BaseWindTurbine;
  end Interfaces;

  package MSL_322 "Components included in MSL 3.2.2"
    extends Modelica.Icons.Package;

    model FrequencySensor "Frequency sensor"
      extends Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor;
      Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor frequencySensor annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p plugToPin_p(final m = m, final k = 1) annotation(Placement(transformation(extent = {{-80, -10}, {-60, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
    equation
      connect(plug_p, plugToPin_p.plug_p) annotation(Line(points = {{-100, 0}, {-72, 0}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(plugToPin_p.pin_p, frequencySensor.pin) annotation(Line(points = {{-68, 0}, {-10, 0}}, color = {85, 170, 255}, smooth = Smooth.None));
      connect(frequencySensor.y, y) annotation(Line(points = {{11, 0}, {110, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
      annotation(Icon(graphics = {Line(points = {{70, 0}, {80, 0}, {90, 0}, {100, 0}}, color = {0, 0, 127}), Text(extent = {{-29, -11}, {30, -70}}, lineColor = {0, 0, 0}, textString = "f")}), Documentation(info = "<html>

<p>
This sensor can be used to measure the frequency of the reference system, using <i>1</i>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor\">single phase FrequencySensor</a>.
</p>

<h4>See also</h4>

<p>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor\">SinglePhase.FrequencySensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor\">PotentialSensor</a>
</p>

</html>"));
    end FrequencySensor;

    block FromSpacePhasor "Conversion: space phasor -> m phase"
      extends Modelica.Blocks.Icons.Block;
      import Modelica.ComplexMath.j;
      import Modelica.ComplexMath.exp;
      parameter Integer m(min = 1) = 3 "Number of phases";
      Modelica.Blocks.Interfaces.RealInput u[2] annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y[m] annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
    protected
      parameter Modelica.SIunits.Angle phi[m] = Modelica.Electrical.MultiPhase.Functions.symmetricOrientation(m);
    equation
      y = array(Complex(u[1], u[2]) * exp(-j * phi[k]) / sqrt(2) for k in 1:m);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{0, 0}, {-80, 80}, {-60, 72}, {-72, 60}, {-80, 80}}, color = {0, 0, 255}), Line(points = {{0, 0}, {-80, -80}, {-72, -60}, {-60, -72}, {-80, -80}}, color = {0, 0, 255}), Line(points = {{0, 0}, {6.67, 10}, {13.33, 17.32}, {20, 20}, {26.67, 17.32}, {33.33, 10}, {40, 0}, {46.67, -10}, {53.33, -17.32}, {60, -20}, {66.67, -17.32}, {73.33, -10}, {80, 0}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(points = {{-10, 0}, {-3.33, 10}, {3.33, 17.32}, {10, 20}, {16.67, 17.32}, {23.33, 10}, {30, 0}, {36.67, -10}, {43.33, -17.32}, {50, -20}, {56.67, -17.32}, {63.33, -10}, {70, 0}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(points = {{10, 0}, {16.67, 10}, {23.33, 17.32}, {30, 20}, {36.67, 17.32}, {43.33, 10}, {50, 0}, {56.67, -10}, {63.33, -17.32}, {70, -20}, {76.67, -17.32}, {83.33, -10}, {90, 0}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Text(extent = {{-62, -74}, {14, -86}}, lineColor = {0, 0, 0}, textString = "zero")}), Documentation(info = "<HTML>
          Transformation of space phasorto m phase values (voltages or currents).
</HTML>"));
    end FromSpacePhasor;

    model PowerSensor "Power sensor"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer m(min = 1) = 3 "number of phases";
      Modelica.SIunits.AngularVelocity omega = der(currentP.reference.gamma);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug currentP(final m = m) annotation(Placement(transformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug currentN(final m = m) annotation(Placement(transformation(extent = {{90, -10}, {110, 10}}, rotation = 0)));
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug voltageP(final m = m) annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}}, rotation = 0)));
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug voltageN(final m = m) annotation(Placement(transformation(extent = {{-10, -110}, {10, -90}}, rotation = 0)));
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y annotation(Placement(transformation(origin = {-80, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p plugToPinsCurrentP(final m = m) annotation(Placement(transformation(extent = {{-80, -10}, {-60, 10}}, rotation = 0)));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p plugToPinsVoltageP(final m = m) annotation(Placement(transformation(origin = {0, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPinsCurrentN(final m = m) annotation(Placement(transformation(extent = {{80, -10}, {60, 10}}, rotation = 0)));
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPinsVoltageN(final m = m) annotation(Placement(transformation(origin = {0, -70}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
      Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor powerSensor[m] annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.ComplexBlocks.ComplexMath.Sum sum(final nin = m) annotation(Placement(transformation(origin = {-80, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
    equation
      connect(plugToPinsCurrentP.plug_p, currentP) annotation(Line(points = {{-72, 0}, {-79, 0}, {-86, 0}, {-100, 0}}, color = {85, 170, 255}));
      connect(currentN, plugToPinsCurrentN.plug_n) annotation(Line(points = {{100, 0}, {93, 0}, {86, 0}, {72, 0}}, color = {85, 170, 255}));
      connect(voltageP, plugToPinsVoltageP.plug_p) annotation(Line(points = {{0, 100}, {0, 100}, {0, 72}}, color = {85, 170, 255}));
      connect(plugToPinsVoltageN.plug_n, voltageN) annotation(Line(points = {{0, -72}, {0, -72}, {0, -100}}, color = {85, 170, 255}));
      connect(plugToPinsCurrentP.pin_p, powerSensor.currentP) annotation(Line(points = {{-68, 0}, {-53.5, 0}, {-53.5, 0}, {-39, 0}, {-39, 0}, {-10, 0}}, color = {85, 170, 255}));
      connect(powerSensor.currentN, plugToPinsCurrentN.pin_n) annotation(Line(points = {{10, 0}, {24.5, 0}, {24.5, 0}, {39, 0}, {39, 0}, {68, 0}}, color = {85, 170, 255}));
      connect(powerSensor.voltageP, plugToPinsVoltageP.pin_p) annotation(Line(points = {{0, 10}, {0, 10}, {0, 68}, {0, 68}}, color = {85, 170, 255}));
      connect(powerSensor.voltageN, plugToPinsVoltageN.pin_n) annotation(Line(points = {{0, -10}, {0, -10}, {0, -68}, {0, -68}}, color = {85, 170, 255}));
      connect(powerSensor.y, sum.u) annotation(Line(points = {{-8, -11}, {-8, -40}, {-80, -40}, {-80, -58}}, color = {85, 170, 255}));
      connect(sum.y, y) annotation(Line(points = {{-80, -81}, {-80, -110}}, color = {85, 170, 255}));
      annotation(Icon(graphics = {Line(points = {{0, 100}, {0, 70}}, color = {0, 0, 255}), Line(points = {{0, -70}, {0, -100}}, color = {0, 0, 255}), Text(extent = {{-29, -70}, {30, -11}}, textString = "P"), Line(points = {{-80, -100}, {-80, 0}}, color = {85, 170, 255}), Text(textColor = {0, 0, 255}, extent = {{-100, 110}, {100, 150}}, textString = "%name"), Line(points = {{-100, 0}, {100, 0}}, color = {0, 0, 255})}), Documentation(info = "<html>

<p>
This sensor can be used to measure <i>m</i> complex apparent power values, using <i>m</i>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor\">single phase PowerSensors</a>.
</p>

<h4>See also</h4>

<p>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor\">SinglePhase.PowerSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor\">PotentialSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor\">VoltageSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor\">CurrentSensor</a>
</p>

</html>"), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics));
    end PowerSensor;

    model ReferenceSensor "Sensor of reference angle gamma"
      extends Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput y "Reference angle" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
    equation
      y = plug_p.reference.gamma;
      plug_p.pin.i = fill(Complex(0), m);
      annotation(Icon(graphics = {Text(extent = {{60, -60}, {-60, -30}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid, textString = "ref")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics));
    end ReferenceSensor;

    block ToSpacePhasor "Conversion: m phase -> space phasor"
      extends Modelica.Blocks.Icons.Block;
      import Modelica.ComplexMath.j;
      import Modelica.ComplexMath.exp;
      import Modelica.ComplexMath.'sum';
      parameter Integer m(min = 1) = 3 "Number of phases";
      Modelica.ComplexBlocks.Interfaces.ComplexInput u[m] annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
      Modelica.Blocks.Interfaces.RealOutput y[2] annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
    protected
      parameter Modelica.SIunits.Angle phi[m] = Modelica.Electrical.MultiPhase.Functions.symmetricOrientation(m);
      Complex c;
    equation
      c = sqrt(2) / m * 'sum'(array(u[k] * exp(j * phi[k]) for k in 1:m));
      y = {c.re, c.im};
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{0, 0}, {80, 80}, {60, 72}, {72, 60}, {80, 80}}, color = {0, 0, 255}), Line(points = {{0, 0}, {80, -80}, {72, -60}, {60, -72}, {80, -80}}, color = {0, 0, 255}), Line(points = {{-80, 0}, {-73.33, 10}, {-66.67, 17.32}, {-60, 20}, {-53.33, 17.32}, {-46.67, 10}, {-40, 0}, {-33.33, -10}, {-26.67, -17.32}, {-20, -20}, {-13.33, -17.32}, {-6.67, -10}, {0, 0}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(points = {{-90, 0}, {-83.33, 10}, {-76.67, 17.32}, {-70, 20}, {-63.33, 17.32}, {-56.67, 10}, {-50, 0}, {-43.33, -10}, {-36.67, -17.32}, {-30, -20}, {-23.33, -17.32}, {-16.67, -10}, {-10, 0}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(points = {{-70, 0}, {-63.33, 10}, {-56.67, 17.32}, {-50, 20}, {-43.33, 17.32}, {-36.67, 10}, {-30, 0}, {-23.33, -10}, {-16.67, -17.32}, {-10, -20}, {-3.33, -17.32}, {3.33, -10}, {10, 0}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Text(extent = {{-12, -74}, {64, -86}}, lineColor = {0, 0, 0}, textString = "zero")}), Documentation(info = "<HTML>
    Transformation of m phase values (voltages or currents) to space phasor.
</HTML>"), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics));
    end ToSpacePhasor;

    model VariableUnrootedCurrentSource "Unrooted variable multiphase AC current"
      extends Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.OnePort;
      import Modelica.Constants.pi;
      Modelica.ComplexBlocks.Interfaces.ComplexInput I[m] annotation(Placement(transformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 270)));
    equation
      i = I;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-60, 60}, {60, 60}}, color = {85, 170, 255}), Polygon(points = {{60, 60}, {30, 70}, {30, 50}, {60, 60}}, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{0, -50}, {0, 50}}, color = {0, 0, 0}), Ellipse(extent = {{-50, 50}, {50, -50}}, lineColor = {0, 0, 0}), Line(points = {{-90, 0}, {-50, 0}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{50, 0}, {90, 0}}, color = {0, 0, 0}, smooth = Smooth.None)}), Documentation(info = "<html>

<p>
This model describes <i>m</i> variable current sources, with <i>m</i> complex signal inputs,
specifying the complex current by the complex RMS voltage components.
Additionally, the frequency of the current source is defined by a real signal input.
<i>m</i> <a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource\">single phase VariableCurrentSources</a> are used.
</p>

<h4>See also</h4>

<p>
<a href=\"modelica://Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource\">SinglePhase.VoltageSource</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource\">VoltageSource</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource\">VariableVoltageSource</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource\">CurrentSource</a>.
</p>
</html>"), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics));
    end VariableUnrootedCurrentSource;
  end MSL_322;
  annotation(version = "0.9.X", versionBuild = 0, versionDate = "2015-XX-XX", uses(Modelica(version = "3.2.1"), Complex(version = "3.2.1")), preferredView = "info", Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Documentation(info = "<html>
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
