import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack{
            
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                
                showSheet.toggle()
                
            }, label: {
                Text("Button")
                .foregroundColor(.green)
                .font(.headline)
                .padding(20)
                .background(Color.white.cornerRadius(10))
                
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondSheet()
//            })
            
            .sheet(isPresented: $showSheet, content: {
               // DO NOT ADD CONDITIONAL LOGIC HERE :\
                SecondSheet()
                
            })
        }
    }
}

   struct SecondSheet: View {
       
       @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(20)
               
                
            })
            
            
        }
    }
}

#Preview {
    SheetsBootcamp()
//    /*SecondSheet*/()
}
