func transformArray<T, U>(_ array: [T], using transform: (T) -> U) -> [U] {
    return array.map(transform)
}

let numbers = [1, 2, 3]
let strings = transformArray(numbers) { "\($0)" }
print(strings) // ["1", "2", "3"]
