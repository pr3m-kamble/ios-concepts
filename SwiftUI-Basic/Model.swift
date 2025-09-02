import SwiftUI

struct UserModel: Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followeeCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Prem","Raj","Pashik", "Vinay"
        UserModel(displayName: "Prem", userName: "prem18", followeeCount: 1000, isVerified: true),
        UserModel(displayName: "Vinay", userName: "vinay44", followeeCount: 2000, isVerified: true),
        UserModel(displayName: "Raj", userName: "raj22", followeeCount: 500, isVerified: false),
        UserModel(displayName: "Pashik", userName: "pashik11", followeeCount: 300, isVerified: false),
        
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundStyle(Color.gray)
                                .font(.caption)

                        }
                        Spacer()
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followeeCount)")
                                .font(.headline)
                            Text("followers")
                                .foregroundStyle(Color.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("USERS")
        }
    }
}

#Preview {
    ModelBootcamp()
}
