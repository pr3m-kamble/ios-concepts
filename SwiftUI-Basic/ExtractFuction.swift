import SwiftUI

struct ExtractedFuctionBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        
        ZStack {
            //background
            backgroundColor
            .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button(action: {
             buttonPtessed()
            }, label: {
                Text("Press Me!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            )
        }
    }
    
    func buttonPtessed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFuctionBootcamp()
}
