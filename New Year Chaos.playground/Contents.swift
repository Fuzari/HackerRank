// Complete the minimumBribes function below.
func minimumBribes(q: [Int]) -> Void {
    var minNumberOfBribes = 0
    var q = q
    
    for i in (0..<q.count).reversed() {
        if (q[i] - (i+1)) > 2 { print("Too chaotic"); return}
        
        for j in stride(from: max(0, q[i]-2), to: i, by: 1){
            if q[j] > q[i] {minNumberOfBribes += 1}
        }
    }
    print(minNumberOfBribes)
    
}

