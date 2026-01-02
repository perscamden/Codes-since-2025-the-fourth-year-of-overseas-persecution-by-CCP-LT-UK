class Solution
{

    public
    int
    repeatedNTimes
    (
        int [] nums
    )
    {
        final HashSet < Integer > hashSet = new HashSet <> ();


        for
        (
            int num
            : nums
        )
        {

            if
            (
                hashSet.contains( num )
            )
            {
                return num;
            }
            else
            {
                hashSet.add( num );
            }
            
        }


        return nums[0];
    }

}
