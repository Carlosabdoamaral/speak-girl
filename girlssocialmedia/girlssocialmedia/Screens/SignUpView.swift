//
//  SignUpView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 10/12/21.
//

import SwiftUI

struct SignUpView: View {
    
    @State var avatar : [String] = ["person.fill", "star.fill", "person.fill", "star.fill", "person.fill", "star.fill", "person.fill", "star.fill", "person.fill", "star.fill"]
    @State var i : Int = 0
    @State private var username : String = ""
    @State private var icon : String = ""
    
    var body: some View {
        HStack { Spacer()
            
            VStack {
                
                //PREVIEW
                Section {
                    ZStack {
                        Circle()
                            .foregroundColor(Color("ColorNude"))
                        Image(systemName: "\(avatar[i])")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color("ColorWine"))
                            .padding(30)
                    }
                    .frame(width: 140, height: 140)
                    
                    Text("Mudar avatar")
                        .foregroundColor(Color.blue)
                        .onTapGesture {
                            if (i == (avatar.count - 1)) {
                                self.i = 0
                            } else {
                                self.i = i + 1
                            }
                        }
                    
                    Text("\(username)")

                }
                
                Section {
                    GroupBox {
                        TextField("Nome de usuário", text: $username)
                        Divider()
                        Text("aaa")
                    }
                }
                
            Spacer()}
            Spacer()
        }
        .background(LinearGradient(colors: [Color("ColorWine"), Color.black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
