protocol EquatableContainer {
    associatedtype Item: Equatable

    func containsItem(_ item: Item) -> Bool
}

struct EquatableBox<T: Equatable>: EquatableContainer {
    typealias Item = T
    private var items: [T] = []

    func containsItem(_ item: T) -> Bool {
        return items.contains(item)
    }

    mutating func addItem(_ item: T) {
        items.append(item)
    }
}

var eqBox = EquatableBox<String>()
eqBox.addItem("Apple")
eqBox.addItem("Banana")
print(eqBox.containsItem("Apple")) // Output: true
