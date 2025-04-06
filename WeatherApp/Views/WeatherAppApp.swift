//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by mac on 02.04.2025.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
            
        }
    }
}

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            MainContentView()
        } else {
            ZStack {
                Image ("Background 1")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Weather")
                        .font(Font.custom("Edensor", size: 48))
                        .foregroundColor(.white)
                    Spacer()
                }
                VStack {
                    Spacer()
                    Text("Zavtra")
                        .font(Font.custom("NIKEA", size: 13))
                        .foregroundColor(.white)
                        .padding(.bottom, 30)
                }
                .ignoresSafeArea(edges: .bottom)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isActive = true
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
