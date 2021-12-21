//
//  ProfilePrivateView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct ProfilePrivateView: View {
    var body: some View {
        ZStack {
            Color("ColorWine").edgesIgnoringSafeArea(.all)
            
            VStack {
                
                //HEADER
                
                //BANNER
                Section {
                    Text("Amaralzaao")
                        .font(.title)
                        .fontWeight(.heavy)
                        .lineLimit(1)
                    
                    Text("Carlos Amaral")
                }
                
                //
                
                Spacer()
            }
        }
        .navigationBarItems(trailing: HStack{
            Button {
                DeleteUser()
            } label: {
                Text("Deletar conta")
                    .foregroundColor(Color.red)
            }
        })
    }
}

struct ProfilePrivateView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePrivateView()
    }
}
