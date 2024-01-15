//
//  accountFollowView.swift
//  InstagramClone
//
//  Created by Prajwal U on 15/01/24.
//

import SwiftUI

struct accountFollowView: View {
    var body: some View {
        HStack {
            ZStack {
                Image("doggo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 76, height: 76)
                    .clipShape(Circle())
                
                Circle()
                    .stroke(lineWidth: 4)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 90, height: 90)
            }.padding(.top, 20)
                .padding(.horizontal, 20)
            
            HStack(alignment:.center){
                
                VStack{
                    Text("1,234")
                    Text("Posts").bold()
                }.padding()
                VStack{
                    Text("5,678")
                    Text("Followers").bold()
                }
                VStack{
                    Text("9,101")
                    Text("Following").bold()
                }
            }.padding(.vertical)
        }
    }
}

#Preview {
    accountFollowView()
        .previewLayout(.sizeThatFits)
}
