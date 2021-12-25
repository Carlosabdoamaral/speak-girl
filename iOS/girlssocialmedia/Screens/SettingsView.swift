//
//  SettingsView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("currentView") var currentView = 2
    @AppStorage("teste") var teste : Bool = true
    var body: some View {
        NavigationView {
            ZStack {
                Color("ColorWine").edgesIgnoringSafeArea(.all)
                
                VStack {
                    GroupBox {
                        NavigationLink(destination: ProfilePrivateView()) {
                            HStack {
                                ZStack {
                                    Circle()
                                    Image(systemName: "sparkles")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(Color("ColorWine"))
                                        .padding()
                                }
                                .frame(width: 60, height: 60)
                                
                                VStack(alignment: .leading) {
                                    Text("Carlos Amaral")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                    Text("@amaralzaao")
                                }
                                
                                Spacer()
                            }
                        }
                    }
                    
                    GroupBox {
                        Toggle(isOn: $teste) {
                            Text("Teste")
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Sair")
                            .padding(.leading, 20)
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                            .padding(.vertical, 10)
                            .padding(.trailing, 20)
                    }
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding(.vertical)
                    .onTapGesture {
                        self.currentView = 0
                    }
                }
                .navigationBarTitle("Ajustes")
                .padding(.horizontal)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
