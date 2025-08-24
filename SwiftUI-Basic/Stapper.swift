import SwiftUI

struct StapperBootcamp: View {
    @State var stappeValue: Int = 10
    @State var widthIncriment: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stappeValue)", value: $stappeValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncriment, height: 100)
            
            Stepper("Stepper 2") {
                //increment
               incrementWidth(amount: 100)
            } onDecrement: {
                //decrement
               incrementWidth(amount: -100)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut){
            widthIncriment += amount
        }
       
    }
}

#Preview {
    StapperBootcamp()
}
