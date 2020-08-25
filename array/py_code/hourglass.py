import array as arr
import math

ar = [[-1,-1,0,-9,-2,-2],
      [-2,-1,-6,-8,-2,-5],
      [-1,-1,-1,-2,-3,-4],
      [-1,-9,-2,-4,-4,-5],
      [-7,-3,-3,-2,-9,-9],
      [-1,-3,-1,-2,-4,-5]]


def hourglass(ar):
    riter = len(ar[0]) - 2
    citer = len(ar) - 2
    hsums = arr.array('i', [0])
    for i in range(riter):
        for j in range(citer):
            row1 = ar[i][j:(j+3)]
            row2 = ar[(i+1)][j:(j+3)]
            row3 = ar[(i+2)][j:(j+3)]
            tot = sum(row1)+row2[1]+sum(row3)
            hsums.append(tot)
            print(tot)

    hsums = hsums[1:]
    return max(hsums)


print(hourglass(ar))
