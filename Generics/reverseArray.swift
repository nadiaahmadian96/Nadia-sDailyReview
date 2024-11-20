func reverseArray<T>(_ array: [T]) -> [T] {
    var reversedArray: [T] = []
    for element in array.reversed() {
        reversedArray.append(element)
    }
    return reversedArray
}

struct Person {
    let name: String
}

let people = [Person(name: "Alice"), Person(name: "Bob"), Person(name: "Charlie")]
let reversedPeople = reverseArray(people)
print(reversedPeople.map { $0.name }) // Output: ["Charlie", "Bob", "Alice"]
