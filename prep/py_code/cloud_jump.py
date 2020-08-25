def cloud_jump(clouds):
    pos = 0
    jumps = 0
    goal = len(clouds) - 1
    while pos < goal:
        check = (goal - pos) >= 2
        if check:
            if clouds[pos + 2] == 1:
                jumps = jumps + 1
                pos = pos + 1
            if clouds[pos + 2] == 0:
                jumps = jumps + 1
                pos = pos + 2
        if check != True:
            jumps = jumps + 1
            pos = pos + 1

    return jumps


print(cloud_jump([0,1,0,0,0,1,0]))
