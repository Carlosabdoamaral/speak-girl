//
//  SettingsView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 04/12/21.
//

import SwiftUI

struct SettingsView: View {
    @State private var wantToCript : Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                NavigationLink(destination: PublicProfileView()) {
                    GroupBox {
                        HStack {
                            VStack(alignment:.leading, spacing: 5) {
                                Text("\(userTemplate.username.capitalized)")
                                    .font(.title3)
                                Text("\(userTemplate.email)")
                                    .font(.subheadline)
                            }
                            .foregroundColor(Color.white)
                            Spacer()
                            
                        }
                    }
                }
                
                GroupBox {
                    Text("Privacidade")
                    Toggle("Criptografar dados", isOn: $wantToCript)
                    
                }
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.vertical, 20)
            .navigationTitle("Configurações")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
