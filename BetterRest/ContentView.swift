//
//  ContentView.swift
//  BetterRest
//
//  Created by Greg Stark on 02/08/2020.
//  Copyright © 2020 Gregory Stark. All rights reserved.
//

import SwiftUI

let now = Date()
let tomorrow = Date().addingTimeInterval(86400)
let range = now ... tomorrow

var comp = DateComponents()

struct ContentView: View {
    
    @State private var wakeUp = Date()
    @State private var sleepAmount = 8.0
    @State private var coffeAmount = 1
    
    var body: some View {
        VStack {
            Text("When do you want to wake up?")
                .font(.headline)
            DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                .labelsHidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
