protocol KeyValueStore {
    associatedtype Key
    associatedtype Value

    func set(value: Value, for key: Key)
    func getValue(for key: Key) -> Value?
}

struct DictionaryStore<K: Hashable, V>: KeyValueStore {
    typealias Key = K
    typealias Value = V
    private var store: [K: V] = [:]

    func set(value: V, for key: K) {
        store[key] = value
    }

    func getValue(for key: K) -> V? {
        return store[key]
    }
}

var store = DictionaryStore<String, Int>()
store.set(value: 100, for: "Score")
print(store.getValue(for: "Score") ?? 0) // Output: 100
