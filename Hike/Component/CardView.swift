//
//  CardView.swift
//  Hike
//
//  Created by Eric on 12/06/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                //MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        
                        Button {
                            print("BUTTON PRESSED")
                        } label: {
                            CustomButtonView()
                        }
                        
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                } //: HEADER
                .padding(.horizontal, 30)
                
                //MARK: - MAIN CONTENT
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color.customIndigoMedium, Color.customSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                //MARK: - FOOTER
                
                Button {
                    print("Button Pressed")
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .padding(.vertical)
                .padding(.horizontal,30)
                .background(
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                )
                
                .cornerRadius(40)
            }
        }
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
