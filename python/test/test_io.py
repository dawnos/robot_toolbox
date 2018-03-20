import unittest
import os
import numpy as np

from rtl.io import aread


class AWriteTest(unittest.TestCase):
    def testAWrite(self):
        os.system('matlab')
        a1 = np.ndarray(shape=(3,4,5), dtype=np.uint8)
        cnt = 1
        for a in xrange(0,3):
            for b in xrange(0,4):
                for c in xrange(0,5):
                    a1[a][b][c] = cnt
                    cnt += 1
        a2 = aread('/tmp/uint8.bin', shape=(3, 4, 5))
        np.testing.assert_array_equal(a1, a2)


if __name__ == '__main__':
    unittest.main()
