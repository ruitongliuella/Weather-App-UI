//
//  HourlyForecastView.swift
//  weatherAppUI
//
//  Created by 刘芮彤 on 2025/10/2.
//

import SwiftUI

struct Hour: Identifiable{
    var id = UUID()
    var time: String
    var weatherSymbol: String
    var temperature: String
}

struct HourlyForecastView: View {
    var hour: Hour
    
    var body: some View {
        VStack{
            Text(hour.time)
            if (hour.weatherSymbol == "sun.max.fill"){
                Image(systemName: hour.weatherSymbol)
                    .padding(1)
                    .foregroundStyle(.yellow)
            }else if (hour.weatherSymbol == "cloud.sun.fill"){
                Image(systemName: hour.weatherSymbol)
                    .padding(1)
                    .foregroundStyle(.white, .yellow)
            }
            Text(hour.temperature)
        }
    }
}

#Preview {
    HourlyForecastView(hour: .init(time: "2PM", weatherSymbol: "sun.max.fill", temperature: "57°"))
}
