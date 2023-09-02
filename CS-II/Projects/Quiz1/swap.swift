func swap(_ array: inout [Int], _ index1: Int, _ index2: Int) {
    let temp = array[index1]
    array[index1] = array[index2]
    array[index2] = temp
}
