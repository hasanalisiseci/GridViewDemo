//
//  ContentView.swift
//  GridViewDemo
//
//  Created by Hasan Ali Şişeci on 8.12.2020.
//

import SwiftUI

let vItems = Array(1...18).map({"image\($0)"})

let Vlayout = [
    GridItem(.fixed(100)),
    GridItem(.fixed(100)),
    GridItem(.fixed(100)),
]

let hItems = Array(1...3).map({"banner\($0)"})

let Hlayout = [
    GridItem(.fixed(150)),
]

struct ContentView: View {
    var body: some View {
                ScrollView(.vertical, showsIndicators: false, content: {
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHGrid(rows: Hlayout, content: {
                            ForEach(hItems, id: \.self) { item in
                                VStack {
                                    Image(item)
                                        .resizable()
                                        .cornerRadius(5)
                                        .border(Color.secondary)
                                        .aspectRatio(contentMode: .fit)
                                        .padding()
                                }
                            }
                        })
                    })
                    
                    LazyVGrid(columns: Vlayout, content: {
                        ForEach(vItems, id: \.self) { item in
                            VStack {
                                Image(item)
                                    .resizable()
                                    .cornerRadius(10)
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            }
                        }
                    })
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
