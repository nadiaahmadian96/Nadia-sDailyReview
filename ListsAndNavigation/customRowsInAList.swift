struct ContentView: View {
    struct Fruit: Identifiable {
        let id = UUID()
        let name: String
        let color: Color
    }
    
    let fruits = [
        Fruit(name: "Apple", color: .red),
        Fruit(name: "Banana", color: .yellow),
        Fruit(name: "Grapes", color: .purple)
    ]
    
    var body: some View {
        List(fruits) { fruit in
            HStack {
                Circle()
                    .fill(fruit.color)
                    .frame(width: 20, height: 20)
                Text(fruit.name)
                    .font(.headline)
            }
        }
    }
}
