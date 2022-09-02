//
//  BarChart.swift
//  ChartsUI
//
//  Created by Lisandro Falconi on 02/09/2022.
//

import SwiftUI
import Charts

struct Profit: Identifiable {
    var id: String = UUID().uuidString
    
    let department: String
    let profit: Double
}

let data: [Profit] = [
    Profit(department: "Production", profit: 15000),
    Profit(department: "Marketing", profit: 8000),
    Profit(department: "Finance", profit: 10000)
]

struct BarChart: View {
    var body: some View {
        Chart(data) {
            BarMark(x: .value("Department", $0.department),
                    y: .value("Profit", $0.profit)
            )
        }
        .foregroundColor(.green)
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart()
    }
}
