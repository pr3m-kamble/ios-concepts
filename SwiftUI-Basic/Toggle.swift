import SwiftUI


struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false

    
    var body: some View {
        VStack{

            HStack{
                Text(toggleIsOn ? "Light Mode" : "Dark Mode")
                    .foregroundStyle(toggleIsOn ? Color.white : Color.black)
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Mode")
                        .foregroundStyle(toggleIsOn ? Color.white : Color.black)
                })
            
            .toggleStyle(SwitchToggleStyle(tint: Color.green))
            
            Spacer()
        }
        .padding(.horizontal,100)
        .background(toggleIsOn ? Color.black : Color.white)
    }
        
}



#Preview {
    ToggleBootcamp()
}
