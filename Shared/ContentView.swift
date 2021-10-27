//
//  ContentView.swift
//  Shared
//
//  Created by Bob Bulliard on 10/26/21.
//

import SwiftUI

struct nextview: View {
    var body: some View {
        Text("Hello, world2!")
            .padding()
    }
}
struct nextview2: View {
    var body: some View {
        Text("Hello, world3!")
            .padding()
    }
}
struct ContentView: View {
    @State var navigated = true
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
   /*
    begin nav link
    */
            NavigationView{
                List{
                    NavigationLink("choos world2", destination: nextview())
                    NavigationLink("choos world3", destination: nextview2())
                }
            }
    // end nav link
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
