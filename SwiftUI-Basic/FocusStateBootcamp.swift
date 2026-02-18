import SwiftUI

struct FocusStateBootcamp: View {
    enum OnboardingFiels: Hashable {
        case username
        case password
    }
    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingFiels?
    var body: some View {
        VStack{
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your Password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            Button("SIGN UP") {
                let usernameIsValid = !username.isEmpty
                                let passwordIsValid = !password.isEmpty
                                if usernameIsValid && passwordIsValid {
                                    print("SIGN UP")
                                } else if usernameIsValid {
                                    fieldInFocus = .password
//                                 usernameInFocus = false
//                                   passwordInFocus = true
                                } else {
                                    fieldInFocus = .username
//                                 usernameInFocus = true
//                                  passwordInFocus = false
                                }
                                
                            }
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .buttonStyle(.glassProminent)
            .controlSize(.extraLarge)
            
//            Button("Toggle Focus State") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.usernameInFocus = true
            }
        }
    }
}

#Preview {
    FocusStateBootcamp()
}
