func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var firstNumber = 10
var secondNumber = 20
swapTwoValues(&firstNumber, &secondNumber)
print("First: \(firstNumber), Second: \(secondNumber)") // First: 20, Second: 10
