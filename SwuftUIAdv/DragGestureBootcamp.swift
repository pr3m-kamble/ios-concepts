//
//  DragGestureBootcamp.swift
//  SwiftUIAdv
//
//  Created by Prem kamble on 14/08/26.
//

import SwiftUI

struct DragGestureBootcamp: View {
    
    @State var offSet: CGSize = .zero
    
    var body: some View {
        ZStack {
            
            VStack{
                Text("\(offSet.width)")
                Spacer()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 500)
                .offset(offSet)
                .rotationEffect(Angle(degrees: getRotationAmmout()))
                .scaleEffect(getScaleAmount())
                
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            withAnimation(.spring()) {
                                offSet = value.translation
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                offSet = .zero
                            }
                        }
                )
        }
    }
    
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offSet.width)
        let percentage = currentAmount / max
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    
    func getRotationAmmout() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offSet.width
        let percentage = currentAmount / max
        let percentageAsDouble = Double(percentage)
        let maxAngle: Double = 10
        return percentageAsDouble * maxAngle
    }
}

#Preview {
    DragGestureBootcamp()
}
