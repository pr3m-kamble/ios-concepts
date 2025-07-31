
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
                Text("spacer()")
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
        HStack(spacing: nil){
            
            
            Spacer(minLength: nil)
                .frame(height: 10)
                
            
            Circle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                
            Circle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
                
            Spacer()
                .frame(height: 10)
              
            Circle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
              
             
            }
        .background(Color.white)
        .padding()
        
        HStack(spacing: 0){
            Image(systemName: "chevron.left")
                .foregroundColor(.gray)
            Text("Previous")
                .fontWeight(.semibold)
            Spacer()
            Text("Next")
                .fontWeight(.semibold)
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
            
        }

    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
