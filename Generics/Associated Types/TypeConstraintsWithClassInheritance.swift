class Animal {
    var name: String
    init(name: String) { self.name = name }
}

class Dog: Animal {}

func printAnimalNames<T: Animal>(from animals: [T]) {
    for animal in animals {
        print(animal.name)
    }
}

let animals = [Dog(name: "Buddy"), Dog(name: "Charlie")]
printAnimalNames(from: animals)
// Output:
// Buddy
// Charlie
