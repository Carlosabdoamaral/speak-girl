//
//  SignUpView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 10/12/21.
//

import SwiftUI

struct SignUpView: View {
    @State var avatar : [String] = ["person.fill", "person.wave.2.fill", "eyes.inverse", "face.smiling.fill", "heart.fill", "ear.fill", "star.fill", "sparkles"]
    @State var i : Int = 0
    
    //USER INFOS
    @State var username : String = ""
    @State var name : String = ""
    @State var email : String = ""
    @State var password : String = ""
    @State var icon : String = ""
    
    // ERROR STATE
    @State var usernameIsValid : Bool = true
    @State var nameIsValid : Bool = true
    @State var emailIsValid : Bool = true
    @State var passwordIsValid : Bool = true
    
    // ERROR LABEL
    @State var usernameErrorLabel : String = ""
    @State var nameErrorLabel : String = ""
    @State var emailErrorLabel : String = ""
    @State var passwordErrorLabel : String = ""
    
    @AppStorage("currentView") var currentView : Int = 1
    
    //FUNCTIONS
    func validateInputs() {
        
        //USERNAME
        if username.isEmpty {
            usernameIsValid = false
            usernameErrorLabel = "Voce deve informar um nome de usuário"
        } else {
            usernameIsValid = true
            usernameErrorLabel = ""
        }
        
        //NAME
        if name.isEmpty {
            nameIsValid = false
            nameErrorLabel = "Voce deve informar o seu nome"
        } else {
            nameIsValid = true
            nameErrorLabel = ""
        }
        
        //EMAIL
        if email.isEmpty {
            emailIsValid = false
            emailErrorLabel = "Voce deve informar o seu email"
        } else {
            emailIsValid = true
            emailErrorLabel = ""
        }
        
        //PASSWORD
        if password.isEmpty {
            passwordIsValid = false
            passwordErrorLabel = "Voce deve informar uma senha"
        } else {
            passwordIsValid = true
            passwordErrorLabel = ""
        }
    }
    
    var body: some View {
        HStack { Spacer()
            
            VStack {
                
                //PREVIEW
                Section {
                    ZStack {
                        Circle()
                            .foregroundColor(Color.white)
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
                }
                
                Section {
                    GroupBox {
                        TextField("Nome de usuário *", text: $username)
                        
                        if !usernameIsValid {
                            HStack {
                                Text("\(usernameErrorLabel)")
                                    .font(.subheadline)
                                    .foregroundColor(Color.red)
                                Spacer()
                            }
                        } else {}
                    }
                    
                    GroupBox {
                        TextField("Seu nome e sobrenome *", text: $name)
                        
                        if !nameIsValid {
                            HStack {
                                Text("\(nameErrorLabel)")
                                    .font(.subheadline)
                                    .foregroundColor(Color.red)
                                Spacer()
                            }
                        } else {}
                    }
                    
                    GroupBox {
                        TextField("Seu e-mail *", text: $email)
                        
                        if !emailIsValid {
                            HStack {
                                Text("\(emailErrorLabel)")
                                    .font(.subheadline)
                                    .foregroundColor(Color.red)
                                Spacer()
                            }
                        } else {}
                    }
                    
                    GroupBox {
                        SecureField("Sua senha *", text: $password)
                        
                        if !passwordIsValid {
                            HStack {
                                Text("\(passwordErrorLabel)")
                                    .font(.subheadline)
                                    .foregroundColor(Color.red)
                                Spacer()
                            }
                        } else {}
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.black.opacity(0))
                        HStack {
                            Text("Cadastrar-se")
                                .font(.headline)
                        }
                    }
                    .frame(height: 50)
                    .onTapGesture {validateInputs()}
                }
                
                Spacer()
                
                Section {
                    HStack {
                        Text("Já possui uma conta?")
                        Text("Entrar")
                            .fontWeight(.bold)
                    }
                    .onTapGesture {
                        self.currentView = 0
                    }
                }
                .padding(.vertical)
            }
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
