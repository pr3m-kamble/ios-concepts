import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    var body: some View {
        //        Button("Click me"){
        //            showActionSheet.toggle()
        //        }
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@pr3msig")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
                
            }
            
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
            
            
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            // add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){
            // add code to report thi post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")){
            // add code to delete thi post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()

                let title = Text("What would you like to do?")

                switch actionSheetOption {
                case .isOtherPost:
                    return ActionSheet(
                        title: title,
                        message: nil,
                        buttons: [shareButton, reportButton, cancelButton]
                    )

                case .isMyPost:
                    return ActionSheet(
                        title: title,
                        message: nil,
                        buttons: [shareButton, reportButton, deleteButton, cancelButton])
            }
        }
        //        return  ActionSheet(title: Text("This is the title".uppercased()))
        
        //        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
        //        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
        //
        //        let button3: ActionSheet.Button = .cancel()
        //        return ActionSheet(
        //            title: Text("This is the Title"),
        //            message: Text("This is the massage"),
        //            buttons: [button1,button2,button3])
        //    }
    }

#Preview {
    ActionSheetBootcamp()
}
