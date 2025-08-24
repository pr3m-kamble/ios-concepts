import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectTab: Int = 0
    let icons: [String] = [
        "heart.fill","globe","house.fill","person.fill"
    ]
    
    var body: some View {
        TabView{
            ForEach(icons, id: \.self) { icons in
                Image(systemName: icons)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundStyle(.red)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundStyle(.green)
//            RoundedRectangle(cornerRadius: 25)
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [.red,.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView(selection: $selectTab) {
//            
//            HomeView(selectedTab: $selectTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            Color.red
            VStack{
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    
                
                Button(action: {
                    selectedTab = 2
                },label: {
                    Text("GO TO PROFILE")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                })
            }
            
                
            }
        }
    }

