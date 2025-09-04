import SwiftUI

struct FruitModel: Identifiable{
    let id: String =  UUID().uuidString
    let name: String
    let count: Int
  
    
}

class FruitViewModel: ObservableObject {
    
  @Published var fruitArrey: [FruitModel] = []
    @Published var isLoading :Bool = false
   
    init() {
        getFruits()
    }
    
    func getFruits() {
        
     let fruit1 = FruitModel(name: "orange", count: 9)
     let fruit2 = FruitModel(name: "banana", count: 4)
     let fruit3 = FruitModel(name: "apple", count: 5)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.fruitArrey.append(fruit1)
            self.fruitArrey.append(fruit2)
            self.fruitArrey.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deletFruit(index: IndexSet){
        fruitArrey.remove(atOffsets: index)
    }
    
}

struct ViewModelBootcamp: View {
    
//    @State var fruitArrey: [FruitModel] = []
   @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
  //  @StateObject -> USE THIS ON CREATION / INIT
  //  @ObservedObject -> USE THS FOR SUB VIEW IF YOU WANT TO USE ANOTHER VIEW
    var body: some View {
        NavigationView{
            List{
                
                if fruitViewModel.isLoading {
                    ProgressView()
                        
                        
                }else{
                    ForEach(fruitViewModel.fruitArrey) { fruit in
                        HStack{
                            Text("\(fruit.count)" )
                                .foregroundStyle(.red)
                            Text("\(fruit.name)" )
                                .font(.headline).bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deletFruit)
                }
                
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List:")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: SecondView( fruitViewModel: fruitViewModel), label:{
                Image(systemName: "arrow.right")
                    .font(.title)
            } )
               
            )
//            .onAppear{
//                fruitViewModel.getFruits()
//            }
        }
    }
    
    
}
struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationmode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack{
                ForEach(fruitViewModel.fruitArrey){ fruit in
                    
                    Text(fruit.name)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
   
}
