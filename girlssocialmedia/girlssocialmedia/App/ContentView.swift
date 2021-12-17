//
//  ContentView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isLogged") var isLogged : Bool = false
    
    // 0 - Login
    // 1 - Cadastro
    // 2,3,4,5... - Menu
    @AppStorage("currentView") var currentView : Int = 0
    
    var body: some View {
        
        if currentView == 0 {
            SignInView()
        } else if currentView == 1 {
            SignUpView()
        } else {
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

                EmergencyView()
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Emergência")
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
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
