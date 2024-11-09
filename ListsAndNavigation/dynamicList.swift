struct ContentView: View {
    let items = ["Apple", "Banana", "Orange", "Grapes"]

    var body: some View {
        List(items, id: \.self) { item in
            Text(item)
        }
    }
}
