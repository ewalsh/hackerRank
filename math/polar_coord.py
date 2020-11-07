import cmath
import numpy as np

zstr = "1+2j"
 test = [s for s in zstr if s == "+"]
if len(test) > 0:
    zarr = zstr.split("+")
else:
    zarr = zstr.split("-")
#
#
# mplyrInt = map(lambda x: x.find('j') * -1, zarr)
# mplyr = list(map(float, mplyrInt))
# zarr0 = map(lambda x: x.replace("j",""), zarr)
# zarr1 = list(map(float, zarr0))
# zarr2 = np.array(mplyr) * np.array(zarr1)
# out0 = abs(complex(zarr2[0], zarr2[1]))
# out1 = abs(cmath.phase(complex(zarr2[0], zarr2[1])))
print(out0)
print(out1)
