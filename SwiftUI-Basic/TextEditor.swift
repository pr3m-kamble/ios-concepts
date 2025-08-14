import SwiftUI

struct TextEditorBootcamp: View {
    @State var text = " Type here..."
    @State var saveText: String = ""
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: $text)
                    .frame(height: 250)
//                    .formStyle(.red)
//                    .background(Color.red)
                    .colorMultiply(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                    .cornerRadius(10) 
                Button(action: {
                    saveText = text
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(saveText)
                
                Spacer()
            }
            .padding()
            
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}
#Preview {
    TextEditorBootcamp()
}
