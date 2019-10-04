# Variable Resolution Multi Agent Robotic Coverage

Kevin Bradner

## Abstract

The field of robotic coverage considers problems in which one or more robots traverse a region with the goal of efficiently visiting each of its constituent points. In this work, we consider the case of a multi agent robotic coverage problem in which the search region contains two types of locations. The first kind of location must be viewed in high detail before it is considered explored, while the second kind of location is fully explored once viewed at any level of detail. Algorithms developed to solve this problem are given full information about the shape of the search region prior to the start of a coverage scenario. However, information about the distribution of locations requiring high vs low detail observation is not known a priori.

In order to best explore such an environment, the robots may swap between two modes of operation. A robot operating in the first mode is able to view the immediate vicinity of its own location in space in high detail. A robot operating in the second mode is able to view a large region surrounding its own location in space, but it views this region in low detail.

As a motivating example, we consider a scenario in which a team of robotic drones are deployed to create a reconaissance map of an area affected by disaster. In such a scenario, the ability to intelligently switch between low resolution photography of large areas and high resolution photography of information-rich locations could speed up the delivery of critical information to first responders.

Simulation software is introduced to train and evaluate data driven algorithms developed to perform this task. Several techniques to generate search regions are implemented so that algorithms can be specialized to one or more environment types. 

Algorithms from prior work in path planning and robotic coverage are adapted to create a baseline solution to this task. Then, algorithms from prior work in machine learning are adapted to learn an approach to this problem based on training experience. These algorithms are compared to each other to evaluate relative performance and ability to specialize their behavior to the type of environments they trained on.
