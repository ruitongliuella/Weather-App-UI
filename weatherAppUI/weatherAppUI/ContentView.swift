//
//  ContentView.swift
//  weatherAppUI
//
//  Created by 刘芮彤 on 2025/9/30.
//

import SwiftUI

struct ContentView: View {
    let sampleHours: [Hour] = [
        Hour(time: "Now", weatherSymbol: "sun.max.fill", temperature: "55°"),
        Hour(time: "1PM", weatherSymbol: "sun.max.fill", temperature: "55°"),
        Hour(time: "2PM", weatherSymbol: "sun.max.fill", temperature: "57°"),
        Hour(time: "3PM", weatherSymbol: "cloud.sun.fill", temperature: "53°"),
        Hour(time: "4PM", weatherSymbol: "sun.max.fill", temperature: "51°")
    ]
    let sampleDays: [Day] = [
        Day(weekday: "Today", weatherSymbol: "cloud.fill", low: "45°", high: "57°"),
        Day(weekday: "Mon", weatherSymbol: "sun.max.fill", low: "54°", high: "70°"),
        Day(weekday: "Tue", weatherSymbol: "cloud.drizzle.fill", low: "43°", high: "52°"),
        Day(weekday: "Wed", weatherSymbol: "cloud.rain.fill", low: "33°", high: "45°"),
        Day(weekday: "Thu", weatherSymbol: "sun.max.fill", low: "28°", high: "32°"),
        Day(weekday: "Fri", weatherSymbol: "cloud.fill", low: "25°", high: "33°"),
        Day(weekday: "Sat", weatherSymbol: "snowflake", low: "23°", high: "30°"),
        Day(weekday: "Sun", weatherSymbol: "snowflake", low: "21°", high: "29°"),
        Day(weekday: "Mon", weatherSymbol: "sun.max.fill", low: "30°", high: "43°"),
        Day(weekday: "Tue", weatherSymbol: "cloud.sun.fill", low: "40°", high: "53°")
    ]
    
    var body: some View {
        ZStack{
            Color.blue.opacity(0.5)
                .ignoresSafeArea()
            VStack (){
                Text("Chapel Hill")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                Text("55&deg;")
                    .font(.system(size: 98))
                    .offset(x: 16)
                    .fontWeight(.thin)
                Text("Sunny")
                    .opacity(0.7)
                    .font(.system(size: 22))
                Text("H:57&deg;  L:45&deg;")
                    .font(.system(size: 22))
                Spacer()
                HourlyRowView(hours: sampleHours)
                    .padding()
                    .frame(width: 380, height: 130)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.blue.opacity(0.6))
//                            .position(x:190, y:150)
                    )
                    .position(x:185, y:95)
                WeeklyRowView(days: sampleDays)
                    .padding()
                    .frame(width: 380, height:500)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.blue.opacity(0.6))
                    )
                    .position(x:185, y:150)
                
                
//                Rectangle()
//                    .cornerRadius(20)
//                    .frame(width: 380, height: 150)
//                    .position(x: 185, y:100)
//                    .foregroundStyle(Color.blue.opacity(0.6))
//                Rectangle()
//                    .cornerRadius(20)
//                    .frame(width: 380, height:500)
//                    .position(x: 185, y:170)
//                    .foregroundStyle(Color.blue.opacity(0.6))
                
            }
            .padding()
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    ContentView()
}
