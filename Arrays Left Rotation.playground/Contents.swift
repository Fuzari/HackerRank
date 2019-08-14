// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    var array = a
    let numberOfRotations = d % array.count
    for _ in 0..<numberOfRotations {
        let tempVar = array[0]
        for i in 0..<array.count-1 {
            array[i] = array[i+1]
        }
        array[array.count-1] = tempVar
    }
    return array
}
