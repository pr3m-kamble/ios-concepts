import SwiftUI

struct TabGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40){
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundStyle(isSelected ? Color.green : Color.red)
            
            Button(action:{
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            })
            Text("TAP Gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TabGestureBootcamp()
}
