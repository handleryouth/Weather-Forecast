//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Tony Gultom on 13/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            
//            VStack {
//                Text("Tue")
//                Image(systemName: "cloud.heavyrain.fill").foregroundStyle(Color.blue)
//                Text("High: 60")
//                Text("Low: 40")
//            }.padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    
    var iconName: String {
        if isRainy {
            return "cloud.heavyrain.fill"
        } else {
            return "sun.max.fill"
        }
        
    }
    
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
            
        } else {
            return Color.yellow
        }
    }
    
    
    var body: some View {
        VStack {
            Text(day).font(Font.headline)
            Image(systemName: iconName).foregroundStyle(iconColor).font(Font.largeTitle).padding(5)
            Text("High: \(high)º").fontWeight (Font.Weight.semibold)
            Text("Low: \(low)º").fontWeight (Font.Weight.medium).foregroundStyle(Color.secondary)
        }.padding()
    }
}
