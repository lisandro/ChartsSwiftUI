//
//  ContentView.swift
//  ChartsUI
//
//  Created by Lisandro Falconi on 02/09/2022.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Bar chart") {
                    BarChart()
                }
            }.navigationTitle("My Charts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
