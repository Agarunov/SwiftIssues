//
//  ContentView.swift
//  ViewBuilderBug
//
//  Created by Агарунов Антон on 10.11.2019.
//  Copyright © 2019 Anton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
    
    @ViewBuilder var first: some View {
        Text("First") // error: Type of expression is ambiguous without more context
    }
  
    @ViewBuilder var second: some View {
        return Text("Second")
    }
    
    @ViewBuilder func third() -> some View {
        Text("Third") // Type of expression is ambiguous without more context
    }

    @ViewBuilder func fourth() -> some View {
        return Text("Fourth")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
