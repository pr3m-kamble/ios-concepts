//
//  ScrollViewReaderBootcamp.swift
//  SwiftUIAdv
//
//  Created by Prem kamble on 16/08/26.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    
    @State var scrolToIndex: Int = 0
    @State var textFieldText: String = ""
    
    var body: some View {
        VStack {
            
            TextField("Enter a number here...", text: $textFieldText)
                .frame(height: 55)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            
            Button("Scroll now ") {
                withAnimation(.spring()) {
                    if let index = Int(textFieldText){
                        scrolToIndex = index
                    }
                    //proxy.scrollTo(40, anchor: .center)
                }
            }
            
            ScrollView {
                
                ScrollViewReader { proxy in
                    ForEach(0..<50){ index in
                        Text("thid is item \(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrolToIndex) { oldValue, newValue in
                        withAnimation(.spring()){
                            proxy.scrollTo(newValue, anchor: .top)

                        }
                    }
                }
                
            }
        }
    }
}

#Preview {
    ScrollViewReaderBootcamp()
}
