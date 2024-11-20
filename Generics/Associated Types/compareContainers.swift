func compareContainers<C1: Container, C2: Container>(
    _ container1: C1,
    _ container2: C2
) -> Bool where C1.Item == C2.Item, C1.Item: Equatable {
    return container1.getItem(at: 0) == container2.getItem(at: 0)
}
struct SimpleBox<T: Equatable>: Container {
    typealias Item = T
    private var items: [T] = []

    func getItem(at index: Int) -> T? {
        return items.indices.contains(index) ? items[index] : nil
    }

    mutating func addItem(_ item: T) {
        items.append(item)
    }
}

var box1 = SimpleBox<Int>()
box1.addItem(10)

var box2 = SimpleBox<Int>()
box2.addItem(10)

print(compareContainers(box1, box2)) // Output: true
