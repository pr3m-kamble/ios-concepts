import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
             // Gradient(colors: [.green, .blue])
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )
//                RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))]),
//                               center: .topLeading,
//                               startRadius: 5,
//                               endRadius: 400)
                AngularGradient(
                                gradient: Gradient(colors: [.red, .blue]),
                                center: .center,
                                angle: .degrees(180)
                               )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
    
}
