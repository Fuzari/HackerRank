/*
 Lilah has a string, s, of lowercase English letters that she repeated infinitely many times.
 Given an integer, n, find and print the number of letter a's in the first  letters of Lilah's infinite string.
 For example, if the string s="abcac" and n=10, the substring we consider is abcacabcac , the first 10 characters of her infinite string. There are 4 occurrences of a in the substring.
 
 Function Description
 Complete the repeatedString function in the editor below. It should return an integer representing the number of occurrences of a in the prefix of length  in the infinitely repeating string.
 repeatedString has the following parameter(s):
        s: a string to repeat
        n: the number of characters to consider
 */

func repeatedString(s: String, n: Int) -> Int {
    guard s != "a" else { return n }
    
    var countOfLetterA = 0
    var count1 = 0
    var lengthOfString = s.count
    
    for item in s {
        if item == "a" { countOfLetterA += 1}
    }
    
    for item in s.prefix(n % s.count) {
        if item == "a" { count1 += 1}
    }
    
    return countOfLetterA * (n / lengthOfString) + count1
}
