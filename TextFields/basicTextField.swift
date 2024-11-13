import SwiftUI

struct ContentView: View {
    @State private var name: String = ""  // State to hold the input
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())  // Adds a border style
            Text("Hello, \(name)!")
        }
        .padding()
    }
}
