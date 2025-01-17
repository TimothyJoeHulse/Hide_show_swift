//
//  ContentView.swift
//  Hide_Show_Disclosure_group_show_output
//
//  Created by Timothy Hulse on 9/1/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var trebleOn: Bool = false
    @State private var bassOn: Bool = false
    @State private var levels = 0.1
    
    @State private var isExpanded = false
    
    
    
    var body: some View {
        Form {
            DisclosureGroup("Audio Settings", isExpanded: $isExpanded) {
                VStack{
                    Toggle("Treble", isOn: $trebleOn)
                    
                    Toggle("Bass", isOn: $bassOn)
                    Slider(value: $levels, in: 0...1, step: 0.1)
                }
                .padding()
            }
            if isExpanded {
//                Text("Treble is \(trebleOn)")
//                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                    .padding()
                let trebStr = trebleOn ? "ON" : "OFF"
                Text("Treble is \(trebStr)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                
                let bassStr = bassOn ? "ON" : "OFF"  
                Text("Bass is \(bassStr)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Text("\(levels, specifier: "%.2f")")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
