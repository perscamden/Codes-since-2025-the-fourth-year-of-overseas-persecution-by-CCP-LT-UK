class Solution
{

    public
    int
    countNegatives
    (
        int [][] grid
    )
    {
        final int m = grid.length;
        final int n = grid[0].length;
        int answer = m * ( n - 1 );
        int i = n - 1;


        for
        (
            final int [] row
            : grid
        )
        {


            while
            (
                i >= 0
                && row[i] < 0
            )
            {
                i --;
            }


            answer -= i;
        }


        return answer;
    }

}
