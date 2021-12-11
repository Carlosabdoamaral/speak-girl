//
//  ManualTabViewTemplate.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct ManualTabViewTemplate: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Section {
                VStack(alignment: .leading) {
                    Text("Dica: 0")
                        .fontWeight(.ultraLight)
                    
                    Text("Interagir")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                }
            }
            Spacer()
            
            Section {
                Text("para um bom uso da plataforma bla bla bla")
            }
            
            Spacer()
        }
        .padding(30)
        .frame(height: 600)
        .background(LinearGradient(colors: [Color("ColorWine"), Color.black], startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(10)
        .shadow(color: .black, radius: 10, x: 0, y: 0)
    }
}

struct ManualTabViewTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ManualTabViewTemplate()
    }
}
