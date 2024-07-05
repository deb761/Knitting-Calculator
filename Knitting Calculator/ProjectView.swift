//
//  ProjectView.swift
//  Knitting Calculator
//
//  Created by Deborah Engelmeyer on 3/10/24.
//

import SwiftUI
import Combine

struct ProjectView: View {
    private var name: String
    init(name: String) {
        self.name = name
    }
    @State private var chestSize: Double? = 40
    @State private var chestUnits: String = shortLengthUnits[0]
    private static var shortLengthUnits = ["in", "cm"]
    @State private var guage: Double? = 20
    @State private var guageUnit: String = guageUnits[0]
    private static var guageUnits = ["sts/4in","sts/10cm","sts/in","sts/cm"]
    @State private var needed: Double? = 20
    @State private var neededUnits = longLengthUnits[0]
    @State private var ballSize: Double? = 120
    @State private var ballSizeUnits = longLengthUnits[0]
    private static var longLengthUnits = ["yards", "meters"]
 

    var body: some View {
        HStack {
            Text(name).font(.largeTitle)
            Image(name)
        }
        List {
                ControlGroup {
                    Label("Chest Size", systemImage: "none").labelStyle(.titleOnly)
                    TextField("Chest Size", value: $chestSize, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                    Picker(selection: $chestUnits, label: Text("Units")) {
                        ForEach(Self.shortLengthUnits, id:\.self) { unit in Text(unit)}
                    }
                }
                ControlGroup {
                    Label("Guage", systemImage: "none").labelStyle(.titleOnly)
                    TextField("Guage", value: $guage, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                    Picker(selection: $guageUnit, label: Text("Units")) {
                        ForEach(Self.guageUnits, id:\.self) { unit in Text(unit)}
                    }
                }
                ControlGroup {
                    Label("Yarn Requirements", systemImage: "none").labelStyle(.titleOnly)
                    TextField("YarnRequirements", value: $needed, formatter: NumberFormatter())
                    Picker(selection: $neededUnits, label: Text("Units")) {
                        ForEach(Self.longLengthUnits, id:\.self) { unit in Text(unit)}
                    }
                }
                ControlGroup {
                    Label("Ball Size", systemImage: "none").labelStyle(.titleOnly)
                    TextField("Ball Size", value: $needed, formatter: NumberFormatter())
                    Picker(selection: $ballSizeUnits, label: Text("Units")) {
                        ForEach(Self.longLengthUnits, id:\.self) { unit in Text(unit)}
                    }
                }
            
        }
    }
}

#Preview {
    ProjectView(name: "Sweater")
}
