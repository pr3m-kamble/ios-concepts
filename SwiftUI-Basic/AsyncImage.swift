import SwiftUI

struct AsyncImageBootcamp: View {
    private let url = URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-16e-white-witb-202502?wid=346&hei=784&fmt=jpeg&qlt=90&.v=ZG5hQXIwb1R6bHhDaFVoM1hPZ3dDbEpia2hDRHJhZUlvOVZCVHBVMWlwcHZkVHJuc3hORjJFMmpVOWZFSTFGSk14MXJScFRZN3Y5OWZsRXVrN1k4cFZEUGFrWHVHNVFuSGxCUnlnYlN0dkk")
    
    var body: some View {
        AsyncImage(url: url)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    AsyncImageBootcamp()
}
