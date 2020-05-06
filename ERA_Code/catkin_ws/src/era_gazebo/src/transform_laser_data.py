#!/usr/bin/env python
#
# Copyright 2018 IBM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

from __future__ import division
from __future__ import print_function

import rospy
from sensor_msgs.msg import LaserScan
#import math
#import json
#import sys
#import numpy as np
#from sensor_msgs.msg import PointCloud2, PointField
#from std_msgs.msg import Header
#from sensor_msgs.point_cloud2 import create_cloud_xyz32


class TransformLaser(object):
    
    def __init__(self):
        self.laser = LaserScan()
        self.laser_sub = rospy.Subscriber('/era/laser/scan', LaserScan, self.laser_callback)
        self.laser_pub = rospy.Publisher('/era/laser/transformed_scan', LaserScan, queue_size=1)
        
        self.tf_buffer = tf2_ros.Buffer() # buffer for up to 10 secs
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer)
        
    def get_transform(self):
        try:
            self.transform = self.tf_buffer.lookup_transform('base_link',           # target frame
                                                             'laser_link',          # source frame
                                                             rospy.Time(0),         # get the latest available transform
                                                             rospy.Duration(1.0))   # wait for 1 sec
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            rospy.logerror('Error getting transform')
            print("ERROR!")
        
    def laser_callback(self, msg):
        self.laser = msg
        self.get_transform()
        #rospy.loginfo(msg)
        transformed_laser = LaserScan()
        transformed_laser.header = msg.header
        
        self.laser_pub.publish(msg)


rospy.init_node('transform_laser_data')
rate = rospy.Rate(1) # Hz
tl = TransformLaser()

while not rospy.is_shutdown():
    rate.sleep()
