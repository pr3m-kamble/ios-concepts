import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text thst I would like to display to the user !")
                Text("This is some text thst I would bbbbbffbb!")
                Text("This is some text !")

            }
            
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
