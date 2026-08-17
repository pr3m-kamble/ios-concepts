//
//  MultipleSheetsBootcamp.swift
//  SwiftUIAdv
//
//  Created by Prem kamble on 17/08/26.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String;
}

struct MultipleSheetsBootcamp: View {
    
    @State var selectedModel: RandomModel = RandomModel(title: "startig title")
    @State var showSheet : Bool = false
   // @State var selectedIndex: Int = 0
    
    var body: some View {
        VStack(spacing: 10){
            Button("Bitton 1") {
               // selectedIndex = 1
                selectedModel = RandomModel(title: "one")
                showSheet.toggle()
            }
            Button("Bitton 2") {
               // selectedIndex = 2
                selectedModel = RandomModel(title: "two")
                showSheet.toggle()
            }
        }
        .sheet(isPresented: $showSheet) {
             nextScreen(selectedModel: $selectedModel)
//            if selectedIndex == 1 {
//                nextScreen(selectedModel: RandomModel(title: "One"))
//            } else if selectedIndex == 2{
//                nextScreen(selectedModel: RandomModel(title: "Two"))
//            } else {
//                nextScreen(selectedModel: RandomModel(title: "Startig title"))
//            }
        }
    }
}

struct nextScreen: View {
    
    @Binding var selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

#Preview {
    MultipleSheetsBootcamp()
}
