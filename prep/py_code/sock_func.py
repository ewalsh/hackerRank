import array as arr

n = 7
ar = arr.array('i',[1, 2, 1, 2, 1, 3, 2])


def sock_func(n, ar):
    count = 0
    store = ar
    while len(store) > 0:
        s1 = store[0]
        store = store[1:]
        match = list(filter(lambda x: x == s1, store))
        if len(match) > 0:
            count = count + 1
            store.remove(s1)
    return count


print(sock_func(n, ar))
