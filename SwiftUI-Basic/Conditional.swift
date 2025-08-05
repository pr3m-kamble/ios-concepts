import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCirle: Bool = false
    @State var showRectangel: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Button ("IS LOADING \(isLoading.description)"){
                isLoading.toggle()
            }
            
            
            if isLoading{
               
                      
                ProgressView()
                 
            }
            
//            Button("Circle Button: \(showCirle.description)"){
//                showCirle.toggle()
//            }
//            Button("Rectangel Button \(showRectangel.description)"){
//                showRectangel.toggle()
//            }
//            if showCirle  {
//                Circle()
//                    .frame(width: 100,height: 100)
//            }
//            
//            if showRectangel {
//                Rectangle()
//                    .frame(width: 100,height: 100)
//            }
//            if showCirle || showRectangel {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200,height: 100)
//            }
             Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
