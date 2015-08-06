within WindPowerPlants.UsersGuide;


class ReleaseNotes "Release Notes"
  extends Modelica.Icons.ReleaseNotes;
  annotation(preferredView = "info", Documentation(info="<html>

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

<h5>Version 0.9.4, 2015-08-06</h5>
<ul>
<li>Improved setting of intial conditions</li>
</ul>

<h5>Version 0.9.3, 2015-08-06</h5>
<ul>
<li>Fixed typos in documentation</li>
<li>Fixed missing intial conditions</li>
<li>Improved documentation of third party data source</li>
</ul>

<h5>Version 0.9.2, 2015-07-30</h5>
<ul>
<li>Fixed wrong URI</li>
</ul>

<h5>Version 0.9.1, 2015-07-26</h5>
<ul>
<li>Replaced <code>NumberOfIntervals</code> by <code>Interval</code></li>
<li>Renamed root package to <code>package.mo</code> and stored library in directory structure</li>
</ul>

<h5>Version 0.9.0, 2015-07-26</h5>
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
