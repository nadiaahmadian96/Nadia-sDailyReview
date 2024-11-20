protocol Greetable {
    func greet() -> String
}

extension Greetable {
    func greet() -> String {
        return "Hello!"
    }
}

struct Dog: Greetable {}
let dog = Dog()
print(dog.greet()) // Output: Hello!
