import SwiftUI

struct SafeArea: View {
    var body: some View {
//        ZStack {
//           
//                
//            Text("Hello World")
//                .padding(.top,50)
//            Spacer()
//          
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.red)
        
        ScrollView {
            VStack {
                Text("Title Goes Here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(0..<10) {index in
                 RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 140)
                        .shadow(radius: 10)
                        .padding(20)
                }
                
            }
                
            
        }
        .background(.blue)
       
    }
}

#Preview {
    SafeArea()
}
