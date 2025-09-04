import SwiftUI

struct AppStorageBootcamp: View {
//    @State var currentUsersName: String?
    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing: 20){
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName {
                Text(name)
                 
            }
            
            Button("Save".uppercased()){
                let name = "Prem kamble"
                currentUserName = name
            }
        }
        
    }
}

#Preview {
    AppStorageBootcamp()
}
