TextField("Enter email", text: $email)
    .padding()
    .textFieldStyle(RoundedBorderTextFieldStyle())
    .keyboardType(.emailAddress)                 // Sets the keyboard to email layout
    .textContentType(.emailAddress)              // Provides autofill for emails
