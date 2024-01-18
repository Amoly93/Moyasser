//
//  ContentView.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    enum Tab {
        case home
        case order
    }
    var body: some View {
        NavigationStack{
            TabView(selection: $selection) {
                Group{
                    HomeView()
                        .tabItem{
                          Image("logo3")
                        }
                        .tag(Tab.home)
//                    HomeView()
//                        .tabItem{
//                            Label("", systemImage: "house.fill")
//                                .foregroundColor(Color.colorMain)
//                        }
//                        .tag(Tab.home)
              

                }
              
            }
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(Color.colorGray, for: .tabBar)
         
        }
    }
}

#Preview {
    ContentView()
}
