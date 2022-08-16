//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Данила on 15.08.2022.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        NavigationView {
            List(userResponse) { user in
                Cell(user: user)
                    .frame( maxWidth: .infinity)
            }
            .frame( maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Преподаватели"))
        }
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
//        .background(Color.purple.ignoresSafeArea())
//        .onAppear {
//            UITableView.appearance().backgroundColor = .clear
//        }
    }
}

struct FriendsListPreviews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
