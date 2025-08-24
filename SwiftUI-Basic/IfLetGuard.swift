import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var currentUserId: String? = nil
    @State var displyText: String? = nil
    @State var isLoading: Bool = false
    var body: some View {
        
        NavigationView{
            VStack{
                Text(" Here we are practicing safe coding!")
                if let text = displyText{
                    Text(text)
                    
                        .font(.title)
                }
                // don not use ! ever !!!!!!
                // do not force unwrap value
//                Text(displyText)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData()
            }
        }
    }
    
    func loadData(){
        if let userId  = currentUserId{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displyText = "this is the new data! user ID is: \(userId)"
                isLoading = false
            }
        }
        else {
            displyText = "Error: There is no user id"
        }
        
    }
    func loadData2(){
        guard let userId = currentUserId else {
            displyText = "Error: There is no user id"
            return
        }
        /// rest of the fuction will work
         isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displyText = "this is the new data! user ID is \(userId)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
