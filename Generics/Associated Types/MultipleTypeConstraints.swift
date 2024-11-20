func combineAndSort<T: Comparable & Hashable>(_ array1: [T], _ array2: [T]) -> [T] {
    let combinedSet = Set(array1).union(array2)
    return Array(combinedSet).sorted()
}
