import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        
//            .background(
//               // .red
//              //  LinearGradient()
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]) , startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 200, height: 200, alignment: .center)
//
//                    
//            )
//        
//            
//            .background(
//               // .red
//              //  LinearGradient()
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]) , startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 320, height: 320, alignment: .center)
//            )
//----------------------------------------------------------------------
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 200, height: 200, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 220, height: 220, alignment: .center)
//            )
//----------------------------------------------------------------------
//        
//        Rectangle()
//              .frame(width: 100, height: 100, alignment: .center)
//              .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topTrailing
//              )
//              .background(
//               Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//               , alignment: .bottomLeading
//              )
//----------------------------------------------------------------------
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]) , startPoint: .leading, endPoint: .trailing))
                    
                    
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), radius: 10,x: 0.0,y: 10.0)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Text("10")
                                .font(.headline)
                                .foregroundColor(Color.white)
                        )
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), radius: 10,x: 5.0,y: 5.0)
                        , alignment: .bottomTrailing)

            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
    
}
