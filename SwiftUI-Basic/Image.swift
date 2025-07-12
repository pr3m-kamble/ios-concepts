
import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("acdc")
            .renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.scaledToFill()
            .frame(width: 150, height: 150)
            .foregroundColor(.blue)
           // .clipped()
            //.cornerRadius(150.0)
           // .clipShape(
               // Circle()
                //RoundedRectangle(cornerRadius: 25.0)
               // Ellipse()
            //)
        
    }
}

#Preview {
    ImagesBootcamp()
}
