import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "THIS IS THE TITLE"
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
                
            }
            
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var ButtonColor: Color = Color.blue
    @Binding var title: String
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            ButtonColor = Color.pink
            title = "This is title!!"
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(ButtonColor)
                .cornerRadius(10)
        })
    
    }
}

#Preview {
    BindingBootcamp()
}
