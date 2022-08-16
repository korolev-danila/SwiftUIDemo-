//
//  TopView.swift
//  SwiftUITest
//
//  Created by Данила on 15.08.2022.
//

import SwiftUI

struct TopView: View {
    
    var user: UserResponse
    
    var body: some View {
        HStack(spacing: 8.0) {
            Image(user.profileImage)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4.0) {
                Text(user.name)
                    .font(.title)
                HStack {
                    Text(user.email)
                        .font(.subheadline)
                        .lineLimit(1)
                    Spacer()
                    Image(systemName: "heart")
                    Text(user.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(user: userResponse[0])
    }
}
