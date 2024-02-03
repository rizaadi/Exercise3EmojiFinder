//
//  CalenderView.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import SwiftUI

struct CalenderView: View {
    @State private var selectedDate = Date()
    
    private var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        return dateFormatter
    }
    var body: some View {
        VStack {
            DatePicker("Select a date", selection: $selectedDate,
                       displayedComponents: [.date, .hourAndMinute])
            .datePickerStyle(GraphicalDatePickerStyle())
            .padding()
            
            Text("Selected Date: \(selectedDate, formatter: dateFormatter)")
        }
    }
}

#Preview {
    CalenderView()
}
