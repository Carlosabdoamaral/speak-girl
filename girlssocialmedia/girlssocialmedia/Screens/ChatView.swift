//
//  ChatView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct ChatView: View {
    @State var sendMessage : String = ""
    var body: some View {
        ZStack {
            Color("ColorWine").edgesIgnoringSafeArea(.all)
            
            VStack {
                // CHAT
                Divider()
                ScrollView(.vertical) {
                    VStack {
                        HStack {
                            Spacer()
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                Text("Mensagem")
                                    .foregroundColor(Color("ColorWine"))
                            }
                            .frame(width: 170, height: 30, alignment: .leading)
                            
                        }
                        
                        
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                Text("Mensagem")
                                    .foregroundColor(Color("ColorWine"))
                            }
                            .frame(width: 170, height: 30, alignment: .leading)
                            
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 10)
                }
                
                // WRITE MESSAGE
                Divider()
                HStack {
                    TextField("Digite algo...", text: $sendMessage)
                    Spacer()
                    if self.sendMessage.isEmpty {
                        
                    } else {
                        Image(systemName: "paperplane.circle.fill")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .frame(height: 40)
                .padding(.horizontal, 10)
                
                Spacer()
            }
        }
        .navigationBarTitle("Username do amigo")
        .navigationBarItems(trailing: Image(systemName: "info.circle"))
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
