//
//  FollowButton.swift
//  InstagramClone
//
//  Created by Prajwal U on 15/01/24.
//

import SwiftUI

struct FollowButton: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 2)
                .fill(Color.blue)
                .padding(.horizontal)
            
            Text("Follow")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
        }
        
        HStack(spacing: 8) {
            ZStack {
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.gray)
                
                Text("Message")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 2)                                    .fill(Color.gray)
                
                Text("Subscribe")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 2)                                    .fill(Color.gray)
                
                Text("Contact")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
            }
        }.padding(.horizontal)
    }
}

#Preview {
    FollowButton()
}
