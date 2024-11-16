struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color.gray : Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct ContentView: View {
    var body: some View {
        Button("Custom Style") {
            print("Custom button tapped!")
        }
        .buttonStyle(CustomButtonStyle())
    }
}
