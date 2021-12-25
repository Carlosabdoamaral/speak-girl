//
//  EmergencyTemplateView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 16/12/21.
//

import SwiftUI

struct EmergencyTemplateView: View {
    
    let title : String = "Polícia Militar Rodoviária"
    let phone : Int = 193
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(phone)  \(title)")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .padding(.bottom, 5)
                    .lineLimit(2)
                
                Text("Voce pode usar este telefone para fazer x y e z ações na hora da emergencia")
                
                HStack {
                    Button {
                        print("Teste")
                    } label: {
                        HStack {
                            Spacer()
                            Image(systemName: "phone.fill")
                            Text("Ligar!")
                            Spacer()
                        }
                        .padding(7)
                        .background(Color.red)
                        .cornerRadius(5)
                    }
                }
                .padding(.top)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct EmergencyTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyTemplateView()
    }
}
