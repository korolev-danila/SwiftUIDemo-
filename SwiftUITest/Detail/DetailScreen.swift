//
//  DetailScreen.swift
//  SwiftUITest
//
//  Created by Данила on 16.08.2022.
//

import SwiftUI

struct DetailScreen: View {
    
    var object: ProductsResponse
    
    var body: some View {
        ScrollView {
            VStack( spacing: 16.0 ) {
                VStack( spacing: 20.0 ) {
                    MainImage(object: object)
                    Text(object.name)
                        .lineLimit(nil)
                        .font(.title)
                }
                LittleStack(object: object)
                
                VStack(alignment: .leading, spacing: 12.0) {
                    Text("Описание")
                        .font(.title)
                    Text(object.description)
                        .lineLimit(nil)
                }
                Spacer()
            }.padding()
        }
    }
}

struct LittleStack: View {
    
    var object: ProductsResponse
    
    var body: some View {
        HStack(spacing: 30.0 ) {
            VStack {
                Text("\(object.lessons)")
                    .font(.title)
                Text("Lesson")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack {
                Text("\(object.students)")
                    .font(.title)
                Text("Students")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
    
}

struct MainImage: View {
    
    var object: ProductsResponse
    
    var body: some View {
        Image(object.image)
            .resizable()
            .cornerRadius(30)
            .frame(width: 170, height: 170)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray, lineWidth: 5)
                    .shadow(radius: 10)
            )
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: materialResponse[0])
    }
}
