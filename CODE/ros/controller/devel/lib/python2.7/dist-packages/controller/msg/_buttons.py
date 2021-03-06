# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from controller/buttons.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class buttons(genpy.Message):
  _md5sum = "7013f4c34338e575015a24a638b00725"
  _type = "controller/buttons"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool TRIANGLE
bool CIRCLE
bool SQUARE
bool CROSS

bool UP
bool DOWN
bool LEFT
bool RIGHT


bool R1
bool R2
bool L1
bool L2"""
  __slots__ = ['TRIANGLE','CIRCLE','SQUARE','CROSS','UP','DOWN','LEFT','RIGHT','R1','R2','L1','L2']
  _slot_types = ['bool','bool','bool','bool','bool','bool','bool','bool','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       TRIANGLE,CIRCLE,SQUARE,CROSS,UP,DOWN,LEFT,RIGHT,R1,R2,L1,L2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(buttons, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.TRIANGLE is None:
        self.TRIANGLE = False
      if self.CIRCLE is None:
        self.CIRCLE = False
      if self.SQUARE is None:
        self.SQUARE = False
      if self.CROSS is None:
        self.CROSS = False
      if self.UP is None:
        self.UP = False
      if self.DOWN is None:
        self.DOWN = False
      if self.LEFT is None:
        self.LEFT = False
      if self.RIGHT is None:
        self.RIGHT = False
      if self.R1 is None:
        self.R1 = False
      if self.R2 is None:
        self.R2 = False
      if self.L1 is None:
        self.L1 = False
      if self.L2 is None:
        self.L2 = False
    else:
      self.TRIANGLE = False
      self.CIRCLE = False
      self.SQUARE = False
      self.CROSS = False
      self.UP = False
      self.DOWN = False
      self.LEFT = False
      self.RIGHT = False
      self.R1 = False
      self.R2 = False
      self.L1 = False
      self.L2 = False

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
      buff.write(_get_struct_12B().pack(_x.TRIANGLE, _x.CIRCLE, _x.SQUARE, _x.CROSS, _x.UP, _x.DOWN, _x.LEFT, _x.RIGHT, _x.R1, _x.R2, _x.L1, _x.L2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.TRIANGLE, _x.CIRCLE, _x.SQUARE, _x.CROSS, _x.UP, _x.DOWN, _x.LEFT, _x.RIGHT, _x.R1, _x.R2, _x.L1, _x.L2,) = _get_struct_12B().unpack(str[start:end])
      self.TRIANGLE = bool(self.TRIANGLE)
      self.CIRCLE = bool(self.CIRCLE)
      self.SQUARE = bool(self.SQUARE)
      self.CROSS = bool(self.CROSS)
      self.UP = bool(self.UP)
      self.DOWN = bool(self.DOWN)
      self.LEFT = bool(self.LEFT)
      self.RIGHT = bool(self.RIGHT)
      self.R1 = bool(self.R1)
      self.R2 = bool(self.R2)
      self.L1 = bool(self.L1)
      self.L2 = bool(self.L2)
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
      buff.write(_get_struct_12B().pack(_x.TRIANGLE, _x.CIRCLE, _x.SQUARE, _x.CROSS, _x.UP, _x.DOWN, _x.LEFT, _x.RIGHT, _x.R1, _x.R2, _x.L1, _x.L2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.TRIANGLE, _x.CIRCLE, _x.SQUARE, _x.CROSS, _x.UP, _x.DOWN, _x.LEFT, _x.RIGHT, _x.R1, _x.R2, _x.L1, _x.L2,) = _get_struct_12B().unpack(str[start:end])
      self.TRIANGLE = bool(self.TRIANGLE)
      self.CIRCLE = bool(self.CIRCLE)
      self.SQUARE = bool(self.SQUARE)
      self.CROSS = bool(self.CROSS)
      self.UP = bool(self.UP)
      self.DOWN = bool(self.DOWN)
      self.LEFT = bool(self.LEFT)
      self.RIGHT = bool(self.RIGHT)
      self.R1 = bool(self.R1)
      self.R2 = bool(self.R2)
      self.L1 = bool(self.L1)
      self.L2 = bool(self.L2)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12B = None
def _get_struct_12B():
    global _struct_12B
    if _struct_12B is None:
        _struct_12B = struct.Struct("<12B")
    return _struct_12B
