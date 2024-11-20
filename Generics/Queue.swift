struct Queue<Element> {
    private var items: [Element] = []
    
    mutating func enqueue(_ item: Element) {
        items.append(item)
    }
    
    mutating func dequeue() -> Element? {
        return items.isEmpty ? nil : items.removeFirst()
    }
}

var queue = Queue<String>()
queue.enqueue("First")
queue.enqueue("Second")
print(queue.dequeue() ?? "Empty") // Output: First
