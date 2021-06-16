# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from arm_lib/angle.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class angle(genpy.Message):
  _md5sum = "eaad8cd660da027597bb8c0321254020"
  _type = "arm_lib/angle"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 alpha
float32 beta
float32 gamma
float32 dx
float32 dy
float32 dz
"""
  __slots__ = ['alpha','beta','gamma','dx','dy','dz']
  _slot_types = ['float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       alpha,beta,gamma,dx,dy,dz

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(angle, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.alpha is None:
        self.alpha = 0.
      if self.beta is None:
        self.beta = 0.
      if self.gamma is None:
        self.gamma = 0.
      if self.dx is None:
        self.dx = 0.
      if self.dy is None:
        self.dy = 0.
      if self.dz is None:
        self.dz = 0.
    else:
      self.alpha = 0.
      self.beta = 0.
      self.gamma = 0.
      self.dx = 0.
      self.dy = 0.
      self.dz = 0.

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
      buff.write(_get_struct_6f().pack(_x.alpha, _x.beta, _x.gamma, _x.dx, _x.dy, _x.dz))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.alpha, _x.beta, _x.gamma, _x.dx, _x.dy, _x.dz,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6f().pack(_x.alpha, _x.beta, _x.gamma, _x.dx, _x.dy, _x.dz))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.alpha, _x.beta, _x.gamma, _x.dx, _x.dy, _x.dz,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f