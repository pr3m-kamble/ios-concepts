import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertmasage: String = ""
    @State var backgroundColor: Color = .yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Button("Button 1"){
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertmasage = "This video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2"){
                    alertType = .success
//                    alertTitle = "SUCCESSFULLY UPLOADED VIDEO 🥳"
//                    alertmasage = "This video is uploaded"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                // Alert(title: Text("There was an error"))
                getAlert()
            })
        }
    }
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
           return Alert(title: Text("Ther was an error"))
        case .success:
           return Alert(title: Text("Ther was a success"), message: nil,
                        dismissButton: .default(Text("OK"), action: {
               backgroundColor = .green
           }))
        default:
               return Alert(title: Text("ERROR"))
        }
//    return Alert(
//        title: Text("There was an error"),
//        message: Text("Here will we decide to explain in the error"),
//        primaryButton: .destructive(Text("Delete"), action:{
//            backgroundColor = .white
//        } ),
//        secondaryButton: .cancel())
        
        
//        return Alert(
//                     title: Text(alertTitle),
//                     message: Text(alertmasage),
//                     dismissButton: .default(Text("OK")))
        
    }
}

#Preview {
    AlertBootcamp()
}
