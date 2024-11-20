func sortAscending<T: Comparable>(_ array: [T]) -> [T] {
    return array.sorted()
}

let sortedNumbers = sortAscending([3, 1, 4, 1, 5])
print(sortedNumbers) // [1, 1, 3, 4, 5]
