//
//  ContentView.swift
//  Knitting Calculator
//
//  Created by Deborah Engelmeyer on 3/10/24.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        VStack {
            Text("Projects").font(.largeTitle)
            LazyVGrid(columns: columns) {
                ProjectThumbView(name: "Sweater")
                ProjectThumbView(name: "Gloves")
                ProjectThumbView(name: "Mittens")
                ProjectThumbView(name: "Socks")
                ProjectThumbView(name: "Tam")
                ProjectThumbView(name: "Scarf")
                ProjectThumbView(name: "Vest")
                ProjectThumbView(name: "Blanket")
                ProjectThumbView(name: "Toque")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


struct ProjectThumbView: View {
    private var name: String;
    init(name: String) {
        self.name = name;
    }
    var body: some View {
        VStack {
            Image("\(name)-thumb")
            Text(name)
        }
    }
}
