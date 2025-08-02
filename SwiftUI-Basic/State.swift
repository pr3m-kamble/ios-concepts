import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "MY TITLE"
    @State var count : Int = 0
    
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
          
                .ignoresSafeArea()
            //content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                
                Text("Count \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1"){
                        backgroundColor = .red
                        myTitle = "Button 1 is Pressed!"
                        count += 1
                        
                    }
                    Button("Button 2"){
                        backgroundColor = .blue
                        myTitle = "Button 2 is Pressed!"
                        count -= 1

                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
