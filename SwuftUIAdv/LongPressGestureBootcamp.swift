//
//  SwiftUIView.swift
//  SwiftUIAdv
//
//  Created by Prem kamble on 10/08/26.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    var body: some View {
        
        VStack {
            Rectangle()
                .fill(isSuccess ?  Color.green : Color.blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            HStack{
                
                Text("Click Here")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) {
                         
                        withAnimation(.easeInOut){
                            isSuccess = true
                        }
                        
                    } onPressingChanged: { isPressing in
                        if isPressing{
                            withAnimation(.easeInOut(duration: 1.0)) {
                                isComplete = true
                            }
                        } else {
                            Task { @MainActor in
                                try? await Task.sleep(for: .milliseconds(100))

                                if !isSuccess {
                                    withAnimation(.easeInOut) {
                                        isComplete = false
                                    }
                                }
                            }
                        }
                        
                    }
                Text("Reset")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .onTapGesture {
                                        isComplete = false
                                        isSuccess = false
                                    }
            }
            
            
            
            
            //        Text(isComplete ? "COMPLETED" : "NOT COMPLETE")
            //            .padding()
            //            .padding(.horizontal)
            //            .background(isComplete ? Color.green : Color.gray)
            //            .clipShape(RoundedRectangle(cornerRadius: 12))
            ////            .onTapGesture {
            ////                isComplete.toggle()
            ////            }
            //            .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) {
            //                isComplete.toggle()
            //            }
            //    }
        }
    }
}

#Preview {
    LongPressGestureBootcamp()
}
