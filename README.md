# First-steps-in-ERA
This repository collects experience on how to get started in ERA.

In this repository, we will share our experience in working with ROS. There is only one tutorial about starting on ERA, since it is a tool recently developed and the information given only explains how to install the tool and how to start it, not how you can really take advantage from ERA to your own projects. After working on ERA for the last 6 months, we have understood how ERA works and here you will find the modifications done to improve the tool.

## What is ERA?
ERA  is  an  open-source application that enables multi-vehicle (cooperative)  sensor  fusion  in  future autonomous / connected cars,  using  elements  of  computer  vision  and  vehicle-to-vehicle  (V2V)  communications. It  models  an  autonomous vehicle that incorporates an on-board sensing  and  mapping  fabric for  multi-modal  sensing  and mapping.  ERA extends these local perception capabilities with a communication and consensus fabric consisting of V2V communications and multi-vehicle map fusion. 

ERA includes components implemented in GNU Radio (gr-ros_interface, gr-foo and gr-ieee802-11) & then also needs ROS Melodic and Gazebo 9, but we will deepen on these aspects later.

The following content is the steps how we started working on ERA. 
## Content
* [Installing ERA](https://github.com/IBM/era/wiki/ERA-on-Ubuntu-18.04-with-ROS-Melodic)
* [ROS Basics](./ROS_Basics)
* [What does ERA do?](./ERA_func)
* [Modify and Create](./Modifications)
* [Test Cases & Results](./Tests)


In this repository, I have uploaded the scripts, modifications & files . Therefore, some topics of ROS haven't been covered. To learn more about ROS, the documentation below can be useful.

## Essential tools and resources to be able to use ERA

* A great ROS introduction to be able to work with ERA: [ROS GitHub](https://github.com/dcallega/ROS_Batbold_experience)
* The original ERA repository: [ERA GitHub](https://github.com/IBM/era)
* [ERA Wiki](https://github.com/IBM/era/wiki)


## Motivations to use ERA:
* A great video on GRCon19 where Prof. Augusto Vega explains the ERA project: [Multi-Vehicle Map Fusion Using GNU Radio](https://www.youtube.com/watch?v=kqWUCon0kKg&feature=youtu.be)

## Recommendation
ERA is fully run on Linux-based operating systems. If you are not familiar with Linux, this [official guide](https://help.ubuntu.com/stable/ubuntu-help/getting-started.html.en) might help you to get familiarized with it.
