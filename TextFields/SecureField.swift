@State private var password: String = ""

SecureField("Enter password", text: $password)
    .padding()
    .textFieldStyle(RoundedBorderTextFieldStyle())
