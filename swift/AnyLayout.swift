import SwiftUI
// https://useyourloaf.com/blog/size-classes/

struct AnyLayoutBoootcamp: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12){
            Text("Horizonta: \(horizontalSizeClass.debugDescription)")
            Text("vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) :  AnyLayout(HStackLayout())
                layout{
                    VStack{
                        Text("Alpha")
                        Text("Alpha")
                        Text("Alpha")

                    }
                }
        
            
//            if horizontalSizeClass == .compact {
//                VStack{
//                    Text("Alpha")
//                    Text("Alpha")
//                    Text("Alpha")
//
//                }
//            } else{
//                HStack{
//                    Text("Alpha")
//                    Text("Alpha")
//                    Text("Alpha")
//
//                }
//            }
          
        }
            }
}

#Preview {
    AnyLayoutBoootcamp()
}
