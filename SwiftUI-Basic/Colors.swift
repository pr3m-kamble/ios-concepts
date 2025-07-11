
import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0,)
            .fill(
                //Color.primary
//                Color(#colorLiteral(red: 0.4023228586, green: 0.3935811818, blue: 0.1915079355, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
                
                Color("CustemColor")
            )
           
            .frame(width: 300, height: 200,)
         
            //.shadow(radius: 20)
            .shadow(color: Color.black.opacity(10), radius: 10, x: 10, y: 10)
    }
}

#Preview {
    ColorsBootcamp()
}
