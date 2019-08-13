/*
 
 */

func hourglassSum(arr: [[Int]]) -> Int {
    var maxHourglassSum  = -70
    for i in 0..<arr.count-2 {
        for j in 0..<arr.count-2{
            let sum = (arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2])
            if sum > maxHourglassSum { maxHourglassSum = sum}
        }
    }
    
    return maxHourglassSum
    
}
