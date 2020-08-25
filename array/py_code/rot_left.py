import array as arr

n=5
d=4
a = [1,2,3,4,5]

def rot_left(a, d):
    a_rot = a[:d]
    if(d < len(a)):
        a_rot = a[d:] + a_rot

    return a_rot


print(rot_left(a,d))
