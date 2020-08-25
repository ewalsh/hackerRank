import array as arr

n = 4
k = 15
prices = [3,7,2,9,4]
# basket = [0, 1, 2, 3, 4]



def max_toys(k, prices):
    out = 0
    prices = list(filter(lambda x: x <= k, prices))
    prices.sort()
    # prices = arr.array('i',prices)
    basket = [0]
    if len(prices) > 0:
        found_max = False

        if sum(prices) <= k:
            basket = basket + prices
            found_max = True

        if sum(prices) > k:
            # add to basket until limit
            i = 0
            while found_max != True:
                basket = basket + [prices[i]]
                if sum(basket) > k:
                    basket = basket[:(len(basket)-1)]
                    found_max = True
                if sum(basket) == k:
                    found_max = True
                    
                    
                i = i + 1

    return(len(basket) - 1)



print(max_toys(k, prices))
