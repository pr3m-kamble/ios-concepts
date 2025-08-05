import SwiftUI

struct TransitionBootcamp: View {
    @State var showViews: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .center) {
                Button("BUTTON"){
                    showViews.toggle()
                }
                .padding(.top, 70)
                Spacer(minLength: 20)
                
            }
            if showViews{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showViews ? 1.0 : 0.0)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
            }
            
                
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TransitionBootcamp()
