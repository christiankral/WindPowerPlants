# WindPowerPlants

The WindPowerPlants library is an open source library for the simulation of wind power plants. The library provides models of wind turbines, generators and control.

#Library description

In the presented version of the library wind turbine models are modeled with
pitch control. The generator models have variable speed and an optional
connector to the mains. The entire library is based on power balance
conditions and losses are fully neglected. Yet, the library
can be extended towards more detailed models considering different types of
losses.

The WindPowerPlants library does not model all the controllers that a real
wind power plant has. Instead, the intention was to model the overall
behavior of wind power plants in such a way, that the major operating
conditions are fulfilled. Therefore, only mechanical dynamics are taken into
account. Electrical transients are fully neglected. There is yet an
electrical interface available to couple electrical networks with one or
more wind power plants. This electrical interface to the mains is based on a
quasi static multi phase connector.

# License

This Modelica library is free software and the use is completely at your own
risk. The library is released under Modelica License 1.1
https://www.modelica.org/licenses/ModelicaLicense1.1

# Development and contribution

The library was developed during a Diploma project at the Technical
Engineering College, TGM, Wexstraße 19-23, 1200 Vienna, Austria. 
Library authors are Christian Kral, Philip Eberhart and Tek Shan Chung.

# Contact

e-mail: dr.christian.kral(at)gmail.com
