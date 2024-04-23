//
//  Charts.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 23.04.2024.
//

import SwiftUI
import Charts

struct Item: Identifiable {
    let id = UUID()
    
    var x = ""
    var y = 0
}

struct Developer: Identifiable {
    let id = UUID()
    
    var name = ""
    var start = 0
    var end = 0
}

struct DayItem: Identifiable {
    let id = UUID()
    
    let x: Date
    let y: Int
}

struct GroupItem: Identifiable {
    let id = UUID()
    
    var x = ""
    var y = 0
    var group = ""
}

extension Date {
    static func dateFrom(year: Int, month: Int, day: Int) -> Date {
        Calendar.current.date(from: .init(calendar: Calendar.current, year: year, month: month, day: day))!
    }
}

struct Charts: View {
    
    @State private var data = [75, 25, 100, 50]
    
    @State private var items = [
        Item(x: "Label 1", y: 75),
        Item(x: "Label 2", y: 100),
        Item(x: "Label 3", y: 25),
        Item(x: "Label 4", y: 50)
    ]
    
    @State private var items2 = [
        Item(x: "Label 1", y: 90),
        Item(x: "Label 2", y: 10),
        Item(x: "Label 3", y: 70),
        Item(x: "Label 4", y: 60)
    ]
    
    @State private var developers = [
        Developer(name: "Ada", start: 8, end: 17),
        Developer(name: "Bob", start: 10, end: 14),
        Developer(name: "Claire", start: 9, end: 20)
    ]
    
    @State private var days = [
        DayItem(x: Date.dateFrom(year: 2024, month: 3, day: 1), y: 75),
        DayItem(x: Date.dateFrom(year: 2024, month: 3, day: 2), y: 100),
        DayItem(x: Date.dateFrom(year: 2024, month: 3, day: 3), y: 25),
        DayItem(x: Date.dateFrom(year: 2024, month: 3, day: 4), y: 50)
    ]
    
    @State private var groups = [
        GroupItem(x: "Label 1", y: 75, group: "Ada"),
        GroupItem(x: "Label 2", y: 100, group: "Ada"),
        GroupItem(x: "Label 3", y: 25, group: "Ada"),
        GroupItem(x: "Label 4", y: 50, group: "Ada"),
        GroupItem(x: "Label 1", y: 90, group: "Bob"),
        GroupItem(x: "Label 2", y: 10, group: "Bob"),
        GroupItem(x: "Label 3", y: 70, group: "Bob"),
        GroupItem(x: "Label 4", y: 60, group: "Bob")
    ]
    
    var body: some View {
        
//        Text("Charts")
        
//        Chart {
//            BarMark(x: PlottableValue.value("Label 1", "Day 1"))
//            BarMark(x: PlottableValue.value("Label 2", "Day 2"))
//        }
        
//        Chart {
//            BarMark(x: .value("Label 1", "Day 1"), y: .value("Value", 75))
//            BarMark(x: .value("Label 2", "Day 2"), y: PlottableValue.value("Value", 25))
//        }
        
//        Chart {
//            BarMark(x: .value("Value", 75), y: .value("Label 1", "Day 1"))
//            BarMark(x: .value("Value", 25), y: .value("Label 2", "Day 2"))
//        }
        
//        Chart(data, id: \.self, content: { item in
//            BarMark(x: .value("Labels", "\(item)"), y: .value("Values", item))
//        })
        
//        Chart {
//            ForEach(data, id: \.self) { item in
//                BarMark(x: .value("Labels", "\(item)"), y: .value("Values", item))
//            }
//        }
        
//        Chart(items, content: { item in
//            BarMark(x: .value("Labels", item.x), y: .value("Values", item.y))
//        })
//        // LineMark, AreaMark, PointMark, RectangleMark
        
//        Chart(items, content: { item in
//            LineMark(x: .value("Labels", item.x), y: .value("Values", item.y))
//            RuleMark(y: .value("Goal", 65))
//                .foregroundStyle(.orange)
//                .lineStyle(StrokeStyle(lineWidth: 2, dash: [8]))
//                .annotation(position: .bottom, alignment: .leading, spacing: 8) {
//                    Text("The Goal")
//                }
//        })
        
//        Chart(developers) { developer in
//            RuleMark(xStart: .value("Start", developer.start), xEnd: .value("End", developer.end), y: .value("Name", developer.name))
//        }
        
//        Chart(developers) { developer in
//            RuleMark(xStart: .value("Start", developer.start), xEnd: .value("End", developer.end), y: .value("Name", developer.name))
//        }
//        .chartXAxisLabel(position: .bottom, alignment: .leading, spacing: 8, content: {
//            Text("X Axis Label")
//                .bold()
//                .font(.title)
//        })
//        .chartYAxisLabel(position: .trailing, alignment: .center, spacing: 12, content: {
//            Text("Y Axis Label")
//                .foregroundStyle(.orange)
//        })
        
//        Chart(items, content: { item in
//            LineMark(x: .value("Labels", item.x), y: .value("Values", item.y))
//                .foregroundStyle(.orange)
//
//            AreaMark(x: .value("Labels", item.x), y: .value("Values", item.y))
//                .foregroundStyle(.mint.opacity(0.1))
//
//            PointMark(x: .value("Labels", item.x), y: .value("Values", item.y))
//        })
        
//        Chart(days, content: { day in
//            BarMark(x: .value("Labels", day.x, unit: .day), y: .value("Values", day.y))
//        })
        
//        Chart {
//            ForEach(items) { item in
//                LineMark(x: .value("Labels", item.x), y: .value("Values", item.y), series: .value("A", "A"))
//            }
//
//            ForEach(items2) { item in
//                LineMark(x: .value("Labels", item.x), y: .value("Values", item.y), series: .value("B", "B"))
//                    .foregroundStyle(.orange)
//            }
//        }
        
        Chart(groups, content: { groupItem in
            LineMark(x: .value("Labels", groupItem.x), y: .value("Values", groupItem.y))
                .foregroundStyle(by: .value("Group", groupItem.group))
//                .lineStyle(by: .value("Group", groupItem.group))
                .lineStyle(StrokeStyle(lineWidth: 4, lineJoin: .round))
                .symbol(by: .value("Group", groupItem.group))
                .interpolationMethod(.cardinal)
        })
        
//        Chart(groups, content: { groupItem in
//            PointMark(x: .value("Labels", groupItem.x), y: .value("Values", groupItem.y))
//                .symbol(.diamond)
//                .foregroundStyle(by: .value("Group", groupItem.x))
//                .symbolSize(by: .value("Group", groupItem.y))
//        })
        
        .padding()
    }
}

#Preview {
    Charts()
}
