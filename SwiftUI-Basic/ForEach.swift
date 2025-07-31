
import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["hi","hey","hello"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack(alignment: .leading){
//            ForEach(0..<10) { index in
//                HStack{
//                Circle()
//                    .frame(width: 30, height: 30)
//                    Text("index is \(index)")
//                }
//            }
            ForEach(data.indices) { index in
                Text(" \(index) : \(data[index])")
            }
        }
        
    }
}

#Preview {
    ForEachBootcamp()
}
