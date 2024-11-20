struct EquatableStack<Element: Equatable> {
    private var items: [Element] = []
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element? {
        return items.popLast()
    }
    
    func contains(_ item: Element) -> Bool {
        return items.contains(item)
    }
}
