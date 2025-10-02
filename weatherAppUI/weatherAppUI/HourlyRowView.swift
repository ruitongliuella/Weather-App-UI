//
//  HourlyRowView.swift
//  weatherAppUI
//
//  Created by 刘芮彤 on 2025/10/2.
//

import SwiftUI

struct HourlyRowView: View {
    let hours: [Hour]
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "clock")
                Text("HOURLY FORECASE")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(1)
            HStack{
                ForEach(hours) { hour in
                    HourlyForecastView(hour: hour)
                    Spacer()
                }
            }
        }
    }
}

//#Preview {
//    HourlyRowView()
//}
