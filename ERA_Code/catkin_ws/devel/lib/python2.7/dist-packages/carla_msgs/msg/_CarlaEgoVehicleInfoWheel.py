# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from carla_msgs/CarlaEgoVehicleInfoWheel.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class CarlaEgoVehicleInfoWheel(genpy.Message):
  _md5sum = "192cba6d0621954855f8c957508a83b4"
  _type = "carla_msgs/CarlaEgoVehicleInfoWheel"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """#
# Copyright (c) 2019-2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
float32 tire_friction
float32 damping_rate
float32 max_steer_angle
float32 radius
float32 max_brake_torque
float32 max_handbrake_torque
geometry_msgs/Vector3 position

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['tire_friction','damping_rate','max_steer_angle','radius','max_brake_torque','max_handbrake_torque','position']
  _slot_types = ['float32','float32','float32','float32','float32','float32','geometry_msgs/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       tire_friction,damping_rate,max_steer_angle,radius,max_brake_torque,max_handbrake_torque,position

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CarlaEgoVehicleInfoWheel, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.tire_friction is None:
        self.tire_friction = 0.
      if self.damping_rate is None:
        self.damping_rate = 0.
      if self.max_steer_angle is None:
        self.max_steer_angle = 0.
      if self.radius is None:
        self.radius = 0.
      if self.max_brake_torque is None:
        self.max_brake_torque = 0.
      if self.max_handbrake_torque is None:
        self.max_handbrake_torque = 0.
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
    else:
      self.tire_friction = 0.
      self.damping_rate = 0.
      self.max_steer_angle = 0.
      self.radius = 0.
      self.max_brake_torque = 0.
      self.max_handbrake_torque = 0.
      self.position = geometry_msgs.msg.Vector3()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6f3d().pack(_x.tire_friction, _x.damping_rate, _x.max_steer_angle, _x.radius, _x.max_brake_torque, _x.max_handbrake_torque, _x.position.x, _x.position.y, _x.position.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.tire_friction, _x.damping_rate, _x.max_steer_angle, _x.radius, _x.max_brake_torque, _x.max_handbrake_torque, _x.position.x, _x.position.y, _x.position.z,) = _get_struct_6f3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6f3d().pack(_x.tire_friction, _x.damping_rate, _x.max_steer_angle, _x.radius, _x.max_brake_torque, _x.max_handbrake_torque, _x.position.x, _x.position.y, _x.position.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.tire_friction, _x.damping_rate, _x.max_steer_angle, _x.radius, _x.max_brake_torque, _x.max_handbrake_torque, _x.position.x, _x.position.y, _x.position.z,) = _get_struct_6f3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f3d = None
def _get_struct_6f3d():
    global _struct_6f3d
    if _struct_6f3d is None:
        _struct_6f3d = struct.Struct("<6f3d")
    return _struct_6f3d
