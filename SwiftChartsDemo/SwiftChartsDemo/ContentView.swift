//
//  ContentView.swift
//  SwiftChartsDemo
//
//  Created by Willian Magnum Albeche on 10/10/22.
//
import Charts
import SwiftUI


struct Item: Identifiable {
    var id = UUID()
    var type: String
    let value: Double

}

struct ContentView: View {
    let items: [Item] = [
        Item(type: "Enginnering", value: 100),
        Item(type: "Desing", value: 35),
        Item(type: "Operations", value: 72),
        Item(type: "Sales", value: 22),
        Item(type: "Mgmt", value: 130)
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                Chart(items) { item in
                        BarMark(x: .value("Departament", item.type),
                            y: .value("Profit", item.value)
                    )
                    .foregroundStyle(Color.purple.gradient)

                }
                .frame(height: 200)
                .padding()
            }
            .navigationTitle("Charts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
