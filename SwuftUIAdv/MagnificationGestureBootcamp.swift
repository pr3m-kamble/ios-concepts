//
//  MagnificationGestureBootcamp.swift
//  SwiftUIAdv
//
//  Created by Prem kamble on 13/08/26.
//

import SwiftUI

struct MagnificationGestureBootcamp: View {
    
    @State private var currentAmount: CGFloat = 0
    @State private var lastAmountL:CGFloat = 0
    
    var body: some View {
        
        VStack(spacing: 10) {
            HStack {
                Circle().frame(width: 35, height: 35)
                Text("Swiftful Thinking")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Rectangle()
                .frame(height: 500)
                .scaleEffect(1 + currentAmount)
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            currentAmount = value.magnification - 1
                                               }
                                               .onEnded { value in
                                                   withAnimation(.spring()) {
                                                       currentAmount = 0
                                                   }
                                               }
                )
            HStack{
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                    Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            
            Text("This is the caption for my post")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

        }
        
        
//        Text("Hello, World!")
//            .font(.title)
//            .padding(40)
//            .background(Color.red.cornerRadius(10))
//            .scaleEffect(1 + currentAmount)
//            .gesture(
//                MagnifyGesture()
//                    .onChanged { value in
//                        currentAmount = value.magnification - 1                    }
//                    .onEnded{ value in
//                       // lastAmountL = lastAmountL + currentAmount
//                        lastAmountL += currentAmount
//                        currentAmount = 0
//                    }
//                )
//    
            }
        }

#Preview {
    MagnificationGestureBootcamp()
}
