import array as arr

n_steps = 8
step_string = "UDDDUDUU"


def hike(n_steps, step_string):
    path = arr.array('i', [0])
    valley_count = 0
    # create path based on steps
    for i in range(n_steps):
        step = step_string[i]
        if step == "U":
            path.append(path[i] + 1)

        if step == "D":
            path.append(path[i] - 1)

        # check if new valley exists
        if path[i] >= 0:
            if path[(i + 1)] < 0:
                valley_count = valley_count + 1

    return valley_count



print(hike(n_steps, step_string))
