object sockFunc {

    def main(n: Int, ar: Array[Int]): Int = {
        var count: Int = 0
        var store: Array[Int] = ar

        while( store.length > 0) {
            var s1: Int = store(0)
            store = store.slice(1,store.length + 1)
            var matchVar: Int = store.indexOf(s1)
            if( matchVar > -1){
                count = count + 1
                var b = store.toBuffer
                b.remove(matchVar)
                store = b.toArray
            }
            println(count)
        }
        count

    }

    // val n: Int = 7
    // var ar: Array[Int] = Array(1,2,1,2,1,3,2)
    //
    // println(main(n,ar))
}
