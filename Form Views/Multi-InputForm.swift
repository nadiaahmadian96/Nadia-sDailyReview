struct ContentView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var age: String = ""
    @State private var password: String = ""
    
    var isFormValid: Bool {
        !name.isEmpty && !email.isEmpty && !age.isEmpty && !password.isEmpty
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name", text: $name)
                        .autocapitalization(.words)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textContentType(.emailAddress)
                    TextField("Age", text: $age)
                        .keyboardType(.numberPad)
                    SecureField("Password", text: $password)
                }
                
                Section {
                    Button("Submit") {
                        UIApplication.shared.hideKeyboard()
                        print("Form submitted")
                    }
                    .disabled(!isFormValid)
                }
            }
            .navigationTitle("User Form")
        }
    }
}
