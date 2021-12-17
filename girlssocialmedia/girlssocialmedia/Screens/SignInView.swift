//
//  SignInView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 10/12/21.
//

import SwiftUI

struct SignInView: View {
    @State var username : String = ""
    @State var password : String = ""
    
    @State var haveErrors : Bool = false
    @State var errorLabel : String = ""
    //Ops... não encontramos um usuário com esta combinação
    
    @AppStorage("currentView") var currentView : Int = 1
    
    var body: some View {
        ZStack {
            
            VStack {
                Text("Logo".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.top, 120)
                Spacer()
            }
            
            VStack {
                Spacer()
                
                //USERNAME INPUT
                GroupBox {
                    TextField("Seu e-mail", text: $username)
                        .keyboardType(.emailAddress)
                }
                
                //PASSWORD INPUT
                GroupBox {
                    SecureField("Senha", text: $password)
                        .keyboardType(.default)
                }
                
                
                //LOGIN BUTTON
                HStack {
                    Spacer()
                    Text("Entrar".uppercased())
                        .foregroundColor(Color("ColorWine"))
                    Spacer()
                }
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                .onTapGesture {
                    if username == "" {
                        self.haveErrors = true
                        self.errorLabel = "Ops... não encontramos um usuário com esta combinação"
                    } else {
                        self.currentView = 3
                    }
                }
                
                
                //FORGOT PASSWORD AND SIGNUP
                VStack {
                    
                    if haveErrors {
                        HStack {
                            Text("\(errorLabel)")
                                .foregroundColor(Color.red)
                                .font(.subheadline)
                                .fontWeight(.light)
                                .padding(.vertical, 10)
                            Spacer()
                        }
                    } else {
                        
                    }
                    
                    HStack {
                        Text("Esqueceu a senha?")
                            .multilineTextAlignment(.leading)
                            .font(.subheadline)
                        Spacer()
                    }
                }
                
                Spacer()
                
                HStack {
                    Text("Novo usuário?")
                        .fontWeight(.light)
                    
                    Button("Cadastre-se", action: {
                        self.currentView = 1
                    })
                }
            }
            .padding(.horizontal, 30)
        }
        .background(LinearGradient(colors: [Color("ColorWine"), Color.black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
