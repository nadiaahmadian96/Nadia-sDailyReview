struct ToggleView: View {
    @State private var isOn = false  // Boolean state

    var body: some View {
        VStack {
            Text(isOn ? "The switch is ON" : "The switch is OFF")
            
            Toggle("Switch", isOn: $isOn)
                .padding()
        }
    }
}
