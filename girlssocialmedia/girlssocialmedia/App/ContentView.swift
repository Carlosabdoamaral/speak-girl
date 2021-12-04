//
//  ContentView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Menu")
                }
            
            ProfileView(user: userTemplate)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Perfil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
