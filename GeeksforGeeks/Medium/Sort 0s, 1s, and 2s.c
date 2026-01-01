void
sort012
(
    int arr []
    , int n
)
{
    
    for
    (
        int i = 0
            , j = 0
            , k = n - 1
        ; i <= k
        ;
    )
    {
        
        if
        (
            arr[i] == 0
        )
        {
            arr[i] = 1;
            arr[j] = 0;
            
            i ++;
            j ++;
        }
        else if
        (
            arr[i] == 2
        )
        {
            arr[i] = arr[k];
            arr[k] = 2;
            
            k --;
        }
        else
        {
            i ++;
        }
        
    }
    
}
