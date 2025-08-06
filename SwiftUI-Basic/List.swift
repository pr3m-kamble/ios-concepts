import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    @State var vaggies: [String] = [
        "tometo","poteto","carrot"
    ]
    var body: some View {
        NavigationView {
            List{
                Section(
                    header: HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                        .font(.headline)
                        .foregroundStyle(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruits in
                        Text(fruits.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                    
                }
                Section(
                    header: Text("Vaggies")) {
                    ForEach(vaggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                    
                    
                }
                
                   
            }
            .accentColor(.purple)
            //.listStyle(SidebarListStyle())
            .navigationTitle("Glocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
        add()
            })
    }
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indcies: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indcies, toOffset: newOffset)
    }
    func add(){
        fruits.append("Coconut".uppercased())
    }
}

#Preview {
    ListBootcamp()
}
