import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = .blue
    var body: some View {
        ZStack{
           backgroundColor
            .ignoresSafeArea()
            
            ColorPicker("Select Color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundStyle(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
