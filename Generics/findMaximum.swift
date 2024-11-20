func findMaximum<T: Comparable>(_ a: T, _ b: T) -> T {
    return a > b ? a : b
}

let maxInt = findMaximum(5, 10) // 10
let maxString = findMaximum("apple", "banana") // "banana"
