import Cocoa

func binarySearch(array:[Int], toFind:Int) -> Int{
    
    var left = 0
    var right = (array.count) - 1
    
    while left <= right{
     let mid = Int((left+right)/2)
        if array[mid] == toFind{
            return mid
        } else if toFind < array[mid]{
            left = mid-1
        } else if toFind > array[mid]{
            right = mid+1
        }
    }
    return -1
}

print(binarySearch(array: [0,1,2,5,8,10], toFind: 2))
