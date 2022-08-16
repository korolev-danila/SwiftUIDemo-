//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Данила on 15.08.2022.
//
import Foundation
import SwiftUI

struct ContentView: View {
    
    var categories: [String: [ProductsResponse]] {
           .init(
               grouping: materialResponse,
               by: { $0.category.rawValue }
           )
       }
    
    var body: some View {
        NavigationView{
            
            List {
                Cell(user: swiftipedia)
                ForEach(self.categories.keys.sorted(), id: \.self) { key in
                    ProductRow(categoryName: key, items: self.categories[key]!)
                    }.listRowInsets(EdgeInsets())
                
                NavigationLink(destination: FriendsList()) {
                    Text("Наши преподователи")
                }
            }
            .frame( maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Homepage"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
