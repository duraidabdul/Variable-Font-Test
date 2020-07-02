//
//  ContentView.swift
//  CTFont Test
//
//  Created by Duraid Abdul on 2020-07-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!").padding()
            .font(Font(createFont()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
