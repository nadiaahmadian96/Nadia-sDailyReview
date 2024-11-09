struct ContentView: View {
    let items = ["Apple", "Banana", "Orange"]

    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                NavigationLink(destination: DetailView(item: item)) {
                    Text(item)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct DetailView: View {
    let item: String
    
    var body: some View {
        Text("You selected \(item)")
            .navigationTitle(item)
    }
}
