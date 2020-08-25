import math

s = 'aba'
n = 10

def letter_count(s, n):
    lper = len(list(filter(lambda x: x == 'a', s)))
    count = lper * math.floor(n/len(s))
    s_short = s[:(n%len(s))]
    count = count + len(list(filter(lambda x: x == 'a', s_short)))

    return count



print(letter_count(s, n))
