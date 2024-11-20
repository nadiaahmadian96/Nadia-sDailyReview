protocol Container {
    associatedtype Item

    func addItem(_ item: Item)
    func getItem(at index: Int) -> Item?
}

struct Box<T>: Container {
    typealias Item = T
    private var items: [T] = []

    func getItem(at index: Int) -> T? {
        return items.indices.contains(index) ? items[index] : nil
    }

    mutating func addItem(_ item: T) {
        items.append(item)
    }
}

var intBox = Box<Int>()
intBox.addItem(10)
intBox.addItem(20)
print(intBox.getItem(at: 1) ?? "No item") // Output: 20

var stringBox = Box<String>()
stringBox.addItem("Apple")
stringBox.addItem("Banana")
print(stringBox.getItem(at: 0) ?? "No item") // Output: Apple
