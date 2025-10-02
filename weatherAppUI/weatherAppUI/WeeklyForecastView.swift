//
//  WeeklyForecastView.swift
//  weatherAppUI
//
//  Created by 刘芮彤 on 2025/10/2.
//

import SwiftUI

struct Day: Identifiable{
    var id = UUID()
    var weekday: String
    var weatherSymbol: String
    var low: String
    var high: String
}

struct WeeklyForecastView: View {
    var day: Day
    
    var body: some View {
        HStack{
            Text(day.weekday)
                .frame(width: 50, alignment: .leading)
            Spacer()
            if (day.weatherSymbol == "sun.max.fill"){
                Image(systemName: day.weatherSymbol)
                    .foregroundStyle(.yellow)
                    .frame(width: 20, height: 20)
            }else if (day.weatherSymbol == "cloud.sun.fill"){
                Image(systemName: day.weatherSymbol)
                    .foregroundStyle(.white, .yellow)
                    .frame(width: 20, height: 20)
            }else if (day.weatherSymbol == "cloud.fill"){
                Image(systemName: day.weatherSymbol)
                    .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
            }else if (day.weatherSymbol == "cloud.drizzle.fill"){
                Image(systemName: day.weatherSymbol)
                    .foregroundStyle(.white, .blue)
                    .frame(width: 20, height: 20)
            }else if (day.weatherSymbol == "cloud.rain.fill"){
                Image(systemName: day.weatherSymbol)
                    .foregroundStyle(.white, .blue)
                    .frame(width: 20, height: 20)
            }else if (day.weatherSymbol == "snowflake"){
                Image(systemName: day.weatherSymbol)
                    .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
            }
            Spacer()
            Text(day.low)
                .frame(width: 30, alignment: .leading)
            Rectangle()
                .fill(Color.blue.opacity(0.8))
                .frame(width: 70, height: 3)
            Text(day.high)
                .frame(width: 30, alignment: .leading)
            Spacer()
        }
    }
}

#Preview {
    WeeklyForecastView(day: .init(weekday: "Mon", weatherSymbol: "sun.max.fill", low: "45°", high: "57°"))
}
