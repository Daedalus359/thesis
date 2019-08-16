* [Adaptive Sampling and Online Learning in Multi-Robot Sensor Coverage with Mixture of Gaussian Processes](https://www.ri.cmu.edu/wp-content/uploads/2018/08/ICRA18_AdaSam_Coverage.pdf "link to pdf")

### Adaptive Sampling / Informative Sampling

Describes the problem of navigating robots to collect samples that best describe the environment model

### 3 Problem Statement

Efficiently Learning the density function online while optimizing for coverage performance

Equation (1) Describes how the ith Voronoi region of the space is defined as the set of all points in the space which are closer (according to the l^2 / euclidean norm) to the ith robot than they are to any other robot.

Equation (2) says that the **cost** function associated with being in a certain position during the static coverage task is equal to the integral over all points of the distance between that point and the robot whose voronoi region it belongs to, times the **phenomenon value** assocated with that point. The phenomenon value appears to represent how important information about that point is.

Equation (3) says that moving each robot toward the centroid (weighted by phenomenon values) of its Voronoi region is the gradient descent approach to optimizing the cost function (2). Following such an approach yields good local solutions to the overal NP-Hard problem of picking positions.

Equaltion (4) Describes a control law for moving towards the centroids described in (3)

Since the phenomenon values are only available for those points that the drones are directly over top of, the task becomes to find a control law like (4) but where the drones are driven towards points that jointly optimize for information gain and observation cost.

### 4 Gaussian Process Regression for Single Robot Environment Modeling

A learned gaussian process model learns a distribution over the phenomemon value function **phi**

