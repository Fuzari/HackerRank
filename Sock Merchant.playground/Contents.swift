/*
 John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
 For example, there are n = 7 socks with colors ar = [1, 2, 1, 2, 1, 3, 2]. There is one pair of color 1 and one of color 2. There are three odd socks left, one of each color. The number of pairs is 2.
 
 Function Description
 Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.
 
 sockMerchant has the following parameter(s):
 n: the number of socks in the pile
 ar: the colors of each sock
 */

// Complete the sockMerchant function below.
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var countOfPairs = 0
    var countedColors: Set<Int> = []
    for sock in ar {
        if countedColors.contains(sock){
            continue
        } else {
            countedColors.insert(sock)
            var countOfSocks = 0
            for item in ar {
                if sock == item {
                    countOfSocks += 1
                }
            }
            countOfPairs += (countOfSocks / 2)
        }
    }
    
    return countOfPairs
}
