import SwiftUI

extension UIApplication {
    func hideKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

Button("Submit") {
    UIApplication.shared.hideKeyboard()  // Dismisses the keyboard
    print("Form submitted")
}

var body: some View {
    VStack {
        Form {
            TextField("Name", text: $name)
            TextField("Email", text: $email)
        }
    }
    .onTapGesture {
        UIApplication.shared.hideKeyboard()
    }
}
