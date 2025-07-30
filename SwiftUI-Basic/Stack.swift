//
//  StackBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Prem kamble on 16/07/25.
//

import SwiftUI

struct StackBootcamp: View {
    // Vstacks -> Vertical
    // hstacks -> Horizontal
    // Zstacks -> Z Index (Back to front)
    var body: some View {
//        VStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.orange )
//                .frame(width: 100, height: 100)
//            
//        }
//----------------------------------------------------------------------
        HStack(alignment: .bottom, spacing: nil, content: {
            Rectangle()
                  .fill(Color.red)
                  .frame(width: 20, height: 200)
              Rectangle()
                  .fill(Color.green)
                  .frame(width: 20, height: 150)
              Rectangle()
                  .fill(Color.orange )
                  .frame(width: 20, height: 100)
            Rectangle()
                  .fill(Color.red)
                  .frame(width: 20, height: 200)
              Rectangle()
                  .fill(Color.green)
                  .frame(width: 20, height: 150)
              Rectangle()
                  .fill(Color.orange )
                  .frame(width: 20, height: 100)
            Rectangle()
                  .fill(Color.red)
                  .frame(width: 20, height: 200)
              Rectangle()
                  .fill(Color.green)
                  .frame(width: 20, height: 150)
              Rectangle()
                  .fill(Color.orange )
                  .frame(width: 20, height: 100)
            Rectangle()
                  .fill(Color.red)
                  .frame(width: 20, height: 200)
              Rectangle()
                  .fill(Color.green)
                  .frame(width: 20, height: 150)
              Rectangle()
                  .fill(Color.orange )
                  .frame(width: 20, height: 100)

                            
           
                   

             }
        )
//----------------------------------------------------------------------
        
        ZStack(alignment: .top){
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            VStack(alignment: .leading, spacing: 30){
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)

            }
            .background(Color.black)
        }
//----------------------------------------------------------------------
        
//        VStack(spacing: 50){
//            
//            ZStack{
//                Circle()
//                    .frame(width: 100, height: 100)
//                
//                Text("8")
//                    .font(.title)
//                    .foregroundColor(.white)
//                
//            }
//            Text("8")
//                .font(.title)
//                .foregroundColor(.white)
//                .background(
//                    Circle()
//                        .frame(width: 100, height: 100)
//                    
//                )
//
//        }
    }
}

#Preview {
    StackBootcamp()
}

