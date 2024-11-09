struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Go to Details", destination: DetailView())
            }
            .navigationTitle("Home")
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the Detail View")
            .navigationTitle("Details")
    }
}
