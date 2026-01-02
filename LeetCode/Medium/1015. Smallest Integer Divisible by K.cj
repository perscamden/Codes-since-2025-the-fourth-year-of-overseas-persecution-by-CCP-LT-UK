class Solution
{
    
    func
    smallestRepunitDivByK
    (
        k: Int64
    ): Int64
    {
        var i = 1
        var n = 1
        let set = HashSet < Int64 > ()


        while
        (
            !set.contains( n )
        )
        {
            
            if
            (
                n % k == 0
            )
            {
                return i
            }
            else
            {
                set.add( n )
                n = ( ( n % k ) * 10 ) + 1
                i ++
            }

        }


        -1
    }

}
