struct ContentView: View {
    struct Person: Identifiable {
        let id = UUID()
        let name: String
        let age: Int
    }
    
    let people = [
        Person(name: "Alice", age: 30),
        Person(name: "Bob", age: 25)
    ]
    
    var body: some View {
        NavigationView {
            List(people) { person in
                NavigationLink(destination: DetailView(person: person)) {
                    Text(person.name)
                }
            }
            .navigationTitle("People")
        }
    }
}

struct DetailView: View {
    let person: ContentView.Person
    
    var body: some View {
        VStack {
            Text("Name: \(person.name)")
            Text("Age: \(person.age)")
        }
        .navigationTitle(person.name)
    }
}
