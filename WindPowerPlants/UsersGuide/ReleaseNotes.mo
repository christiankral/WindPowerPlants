within WindPowerPlants.UsersGuide;
class ReleaseNotes "Release Notes"
  extends Modelica.Icons.ReleaseNotes;
  annotation(preferredView = "info", Documentation(info="<html>

<h5>Version 1.X.X, 2020-XX-XX</h5>
<ul>
<li>Changed internal variable <code>lambda1</code> to <code>lambda_i</code>
    <a href=\"https://github.com/christiankral/WindPowerPlants/issues/27\">#27</a></li>
<li>Add bug fix version of [<a href=\"WindPowerPlants.UsersGuide.References\">Eberhardt2015*</a>]</code>
</ul>

<h5>Version 1.3.0, 2019-10-29</h5>
<ul>
<li>Use full qualified class names in exammples, see
    <a href=\"https://github.com/christiankral/WindPowerPlants/issues/25\">#25</a></li>
</ul>

<h5>Version 1.2.0, 2019-03-09</h5>
<ul>
<li>Switch to Modelica Standard Library 3.2.3, see 
    <a href=\"https://github.com/christiankral/WindPowerPlants/issues/23\">#23</a></li>
<li>Remove <code>versionBuild</code> from libraray annotation</li>
</ul>

<h5>Version 1.1.2, 2019-02-19</h5>
<ul>
<li>Add unit to integrator in examples, see 
    <a href=\"https://github.com/christiankral/WindPowerPlants/issues/21\">#21</a></li>
<li>Fix wrong boolean parameter in annotation, see
    <a href=\"https://github.com/christiankral/WindPowerPlants/issues/22\">#22</a></li>
</ul>

<h5>Version 1.1.1, 2018-10-19</h5>
<ul>
<li>Fix Modelica versioning conflict</li>
</ul>

<h5>Version 1.1.0, 2018-10-14</h5>
<ul>
<li>Change Modelica 1.1 to BSD 3-clause license</li>
</ul>

<h5>Version 1.0.1, 2018-01-05</h5>
<ul>
<li>Fixed
    <a href=\"modelica://PhotoVoltaics.Sources.Blocks.TriangleAndStep\">TriangleAndStep</a>, see
    <a href=\"https://github.com/christiankral/PhotoVoltaics/issues/18\">#18</a></li>
<li>Fixed wrong image according to equation fix of #15</li>
<li>Fixed wrong link in <a href=\"modelica://WindPowerPlants.Components.PitchWindTurbine\">PitchWindTurbine</a></li>
</ul>

<h5>Version 1.0.0, 2016-07-11</h5>
<ul>
<li>Removed package <code>MSL_322</code> and switched to MSL 3.2.2; this is an announced <b>non backwards compatible change</b></li>
<li>Additional numerical fix of lambda1 in <a href=\"modelica://WindPowerPlants.Functions.cpVal\">cpVal</a>; see issue #15</li>
</ul>

<h5>Version 0.9.8, 2016-03-19</h5>
<ul>
<li>Additional fix of lambda1 in <a href=\"modelica://WindPowerPlants.Functions.cpVal\">cpVal</a>; see issue #15</li>
</ul>

<h5>Version 0.9.7, 2016-03-12</h5>
<ul>
<li>Fixed equation of lambda1 in <a href=\"modelica://WindPowerPlants.Functions.cpVal\">cpVal</a>; see issue #15</li>
</ul>

<h5>Version 0.9.5, 2015-10-06</h5>
<ul>
<li>Re-designed <a href=\"modelica://WindPowerPlants.Blocks.TorqueLimiter\">torque limiter</a></li>
<li>Replaced first order delay
    <a href=\"modelica://WindPowerPlants.Components.PitchWindTurbineControlled\">PitchWindTurbineControlled</a>
    in by slew limiter</li>
<li>Re-located signal input connectors</li>
<li>New name of model class
    <a href=\"modelica://WindPowerPlants.Blocks.TriangleAndStep\">TriangleAndStep</a>;
    this is a non backwards compatible change</li>
<li>Added units to input and output connectors with
    unambiguous physical meaning</li>
<li>Fixed issue #9 with negative lambda in wind turbine model</li>
</ul>

<h5>Version 0.9.4, 2015-08-06</h5>
<ul>
<li>Improved setting of initial conditions</li>
</ul>

<h5>Version 0.9.3, 2015-08-06</h5>
<ul>
<li>Fixed typos in documentation</li>
<li>Fixed missing initial conditions</li>
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
<li>Added more turbine control data</li>
</ul>

<h5>Version 0.1.0, 2015-07-22</h5>
<ul>
<li>First release version is not publicly available</li>
<li>This version is based on partner wind data which are not intended for public use</li>
</ul>
</html>"));
end ReleaseNotes;
