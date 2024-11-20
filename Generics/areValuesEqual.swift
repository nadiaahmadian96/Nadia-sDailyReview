func areValuesEqual<T: Equatable>(_ first: T, _ second: T) -> Bool {
    return first == second
}

let isEqual = areValuesEqual(10, 10) // true
let isNotEqual = areValuesEqual("hello", "world") // false
