import SwiftUI

struct ButtonBootcamp: View {
    
   @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Click me"){
                self.title = "You clicked me 1"
                
            }
            .foregroundColor(.red)
            
            Button(action: {
                self.title = "You clicked me 2"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                    
            })
            
            Button(action: {
                self.title = "You clicked me 3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
                            )
                    }
            })
            
            Button(action: {
                self.title = "You clicked me 4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            
                            .stroke(Color.gray,lineWidth: 2)
                    )
                
            })
        }
    }
}

#Preview {
    ButtonBootcamp()
    
}
