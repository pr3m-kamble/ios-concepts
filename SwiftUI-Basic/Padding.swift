import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                Text("padding()")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                
                Text("In SwiftUI, padding is a modifier used to add space around the content of a view, separating it from its neighbors or the edges of its container. This enhances visual appeal and readability.")
                
            }
            .padding()
            .padding(.vertical, 10)
            .background(
                Color.white
                    .cornerRadius(30)
                    .shadow(
                        color: .black.opacity(0.5),
                        radius: 10,
                        x: 0, y: 10)
            )
            .padding(.horizontal, 10)
            
            .padding(.bottom,10)
    
            VStack(alignment: .leading){
                Text("padding()")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                
                Text("In SwiftUI, padding is a modifier used to add space around the content of a view, separating it from its neighbors or the edges of its container. This enhances visual appeal and readability.")
            }
            .padding()
            .padding(.vertical, 10)
            .background(
                Color.white
                    .cornerRadius(30)
                    .shadow(
                        color: .black.opacity(0.5),
                        radius: 10,
                        x: 0, y: 10)
            )
            .padding(.horizontal, 10)
        }

    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
