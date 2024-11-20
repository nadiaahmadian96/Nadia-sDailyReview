func mergeUnique<T: Hashable>(_ array1: [T], _ array2: [T]) -> [T] {
    let uniqueSet = Set(array1).union(array2)
    return Array(uniqueSet)
}

let array1 = [1, 2, 3]
let array2 = [3, 4, 5]
let mergedUnique = mergeUnique(array1, array2)
print(mergedUnique) // Output: [1, 2, 3, 4, 5] (order may vary)
