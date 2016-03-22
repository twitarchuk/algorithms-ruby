# Algorithm to find the largest possible continuos sum in an array.
#Time-complexity: O(n), Auxiliary space: O(1)



def max_continuos_sum(a)
   max_ending_sum = max_slice_sum =0 
   n=a.length
   for i in 0...n
    max_ending_sum = [0,(max_ending_sum+a[i])].max
    max_slice_sum = [max_slice_sum,max_ending_sum].max
   end
    return  max_slice_sum
end

max_continuos_sum([1,1,-1,2,3,4,-9,3,4,5,-6])