# ROS Basics

## Introduction

## Content
* What is ROS?
* ROS filesystem
* ROS Concepts
* ROS Programming
* ROS Tools
* ROS in ERA
* Bibliography


## What is ROS?
The Robot Operating System (ROS) is a set of software libraries and tools that help you build robot applications.
From drivers to state-of-the-art algorithms, and with powerful developer tools, ROS has what you need for your next 
robotics project. And it's all open source.

#### Ecosystem
The software in the ROS ecosystem can be separated into three important groups:
1. Language-and platform-independent tools used for building and distributing ROS-based software;
1. ROS client library implementations such as roscpp, rospy, and roslisp;
1. Packages containing application-related code which uses one or more ROS client libraries.

## ROS Filesystem
The filesystem level concepts mainly cover ROS resources that you encounter on disk, such as:

**Packages:**
Packages are the main unit for organizing software in ROS. A package may contain ROS runtime processes (nodes), a ROS-dependent library, datasets, configuration files, or anything else that is usefully organized together. Packages are the most atomic build item and release item in ROS. Meaning that the most granular thing you can build and release is a package.

**Metapackages:** 
Metapackages are specialized Packages which only serve to represent a group of related other packages. Most commonly metapackages are used as a backwards compatible place holder for converted rosbuild Stacks.

**Package Manifests:**
Manifests (package.xml) provide metadata about a package, including its name, version, description, license information, dependencies, and other meta information like exported packages. The package.xml package manifest is defined in REP-0127.

**Repositories:**
A collection of packages which share a common VCS system. Packages which share a VCS share the same version and can be released together using the catkin release automation tool bloom. Often these repositories will map to converted rosbuild Stacks. Repositories can also contain only one package.

**Message (msg) types:**
Message descriptions, stored in my_package/msg/MyMessageType.msg, define the data structures for messages sent in ROS.

**Service (srv) types:**
Service descriptions, stored in my_package/srv/MyServiceType.srv, define the request and response data structures for services in ROS. 

#### Workspaces
Before starting to write any ROS code, we need to set up a workspace. A workspace is simply a set of directories related to ROS codes. We can create multiple workspaces, but can only work in one at time. Click [here to learn](https://github.com/dcallega/ROS_Batbold_experience/tree/master/workspace) how to create a workspace.


## ROS Concepts

#### Nodes
Nodes are processes that perform computation. ROS is designed to be modular at a fine-grained scale; a robot control system usually comprises many nodes. For example, one node controls a laser range-finder, one node controls the wheel motors, one node performs localization, one node performs path planning, one 

#### Topics
Messages are routed via a transport system with publish / subscribe semantics. A node sends out a message by publishing it to a given topic. The topic is a name that is used to identify the content of the message. A node that is interested in a certain kind of data will subscribe to the appropriate topic. There may be multiple concurrent publishers and subscribers for a single topic, and a single node may publish and/or subscribe to multiple topics. In general, publishers and subscribers are not aware of each others' existence. 

#### Messages
Nodes communicate with each other by passing messages. A message is simply a data structure, comprising typed fields. Standard primitive types (integer, floating point, boolean, etc.) are supported, as are arrays of primitive types. 

####  Publisher & Subscriber Rules
1. Any node can publish any message to any topic as long as he jnows the name of the topic.
1. Any ndode can subscribe to any topic
1. Multiple nodes can publish to the same topic
1. Multiple nodes can subscribe to the same topic
1. A node can publish to multiple topics
1. A node can subscribe to multiple topics

**Remember!** 
Topics and messages have a specific type and that implies that you can only send messages through topics of the same type.

#### ROS Master
The ROS Master provides name registration and lookup to the rest of the Computation Graph. Without the Master, nodes would not be able to find each other, exchange messages, or invoke services. He makes all of this possible by registering nodes to itself, setting up node-to-node communication for topics, and controlling parameter server updates.

####  Bags

Bags are a format for saving and playing back ROS message data. Bags are an important mechanism for storing data, such as sensor data, that can be difficult to collect but is necessary for developing and testing algorithms. 
 
#### Services
The publish / subscribe model is a very flexible communication paradigm, but its many-to-many, one-way transport is not appropriate for request / reply interactions, which are often required in a distributed system. Request / reply is done via services, which are defined by a pair of message structures: one for the request and one for the reply. A providing node offers a service under a name and a client uses the service by sending the request message and awaiting the reply.

#### ROS Computational Graphics

ROS processes are represented as nodes in a graph structure, connected by edges called topics. Messages and service calls do not pass through the master, rather the master sets up peer-to-peer communication between all node processes after they register themselves with the master. This decentralized architecture lends itself well to robots, which often consist of a subset of networked computer hardware, and may communicate with off-board computers for heavy computation or commands.

## ROS Programming 

#### C++


#### Python


#### Publisher & Subscriber Test


## ROS Tools

#### Title


#### Title


## ROS in ERA


##### Title


##### Title






