def bubble_sort(a):
    swap_count = 0
    for i in range(len(a)):
        for j in range(len(a)-1):
            if a[j] > a[(j+1)]:
                tmp1 = a[j]
                tmp2 = a[(j+1)]
                a[j] = tmp2
                a[(j+1)] = tmp1
                swap_count = swap_count + 1

    return 'Array is sorted in ' + str(swap_count) + ' swaps.\n' + \
        'First Element: ' + str(a[0]) + '\n' + \
        'Last Element: ' + str(a[(len(a)-1)])


a = [3,2,1]
print(bubble_sort(a))

a = [5,4,3,2,1]
print(bubble_sort(a))
