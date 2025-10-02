//
//  WeeklyRowView.swift
//  weatherAppUI
//
//  Created by 刘芮彤 on 2025/10/2.
//

import SwiftUI

struct WeeklyRowView: View {
    let days: [Day]
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "calendar")
                Text("10-DAY FORECAST")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(1)
            ForEach(days) { day in
                WeeklyForecastView(day: day)
                Spacer()
            }
        }
    }
}

//#Preview {
//    WeeklyRowView()
//}
