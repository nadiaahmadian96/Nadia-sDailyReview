struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Count: \(count)")
                .font(.largeTitle)
            Button("Increment") {
                count += 1
            }
            .padding()
            .background(count >= 10 ? Color.gray : Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .disabled(count >= 10)  // Disable button when count is 10 or more
        }
    }
}
