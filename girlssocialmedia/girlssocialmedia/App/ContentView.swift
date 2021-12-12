//
//  ContentView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isLogged") var isLogged : Bool = false
    
    var body: some View {
        if isLogged {
            TabView() {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Menu")
                    }
                
                NewPostView()
                    .tabItem {
                        Image(systemName: "plus")
                        Text("Criar")
                    }
                
                CommunityListView()
                    .tabItem {
                        Image(systemName: "person.3.sequence.fill")
                        Text("Nós")
                    }
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Ajustes")
                    }
                
            }
        } else {
            SignInView()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
