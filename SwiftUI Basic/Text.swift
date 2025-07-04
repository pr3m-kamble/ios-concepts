

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!" .uppercased())
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .underline(color: Color.red)
//            .italic()
//            .strikethrough(color: Color.blue)
//            .font(.system(size: 24, weight: .bold, design: .monospaced))
           // .kerning(10)
           // .baselineOffset(19.0)
              .multilineTextAlignment(.leading)
              .foregroundStyle(.red)
              .frame(width:  200, height: 100, alignment: .center)
              .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
