//
//  ChatListView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct ChatListView: View {
    @State var addContact : Bool = false
    
    var body: some View {
        ZStack {
            Color("ColorWine").edgesIgnoringSafeArea(.all)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(0..<10) { i in
                        
                        NavigationLink(destination: ChatView()) {
                            ProfileNavLink()
                        }
                        Divider()
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitle("Chat")
        .navigationBarItems(trailing: Image(systemName: "plus")
                                .onTapGesture(perform: {
                                    self.addContact = true
                                })
                                .sheet(isPresented: $addContact) {
                                    ChatAddContactView()
                                }
        )
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
