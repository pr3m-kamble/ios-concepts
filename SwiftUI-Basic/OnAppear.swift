import SwiftUI

struct OnAppearBootcamp: View {
    
    @State private var myText: String = "Start text."
        @State private var count: Int = 0
        @State private var appearedItems: Set<Int> = []
        
        var body: some View {
            NavigationView {
                ScrollView {
                    Text(myText)
                    LazyVStack {
                        ForEach(0..<50, id: \.self) { index in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(height: 200)
                                .padding(5)
                                .onAppear {
                                    if !appearedItems.contains(index) {
                                        appearedItems.insert(index)
                                        count += 1
                                    }
                                }
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        myText = "This is new text!"
                    }
                }
                .onDisappear {
                    myText = "Ending text"
                }
                .navigationTitle("On Appear: \(count)")
            }
        }
    }

#Preview {
    OnAppearBootcamp()
}
