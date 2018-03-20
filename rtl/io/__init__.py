
import numpy as np


def aread(filename, dtype=np.uint8, shape=None, transpose=False):
  arr = np.fromfile(filename, dtype=dtype)
  if not(shape is None):
    arr = np.reshape(arr, shape)
  if transpose:
    arr = arr.transpose()
  return arr


def awrite(arr, filename, dtype=np.uint8, transpose=False):
  if transpose:
    arr = arr.transpose()
  arr.tofile(filename)
