//
//  ChatAddContactView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct ChatAddContactView: View {
    @State var searchText : String = ""
    
    var body: some View {
        ZStack {
            Color("ColorWine").edgesIgnoringSafeArea(.all)
            
            VStack {
                GroupBox {
                    TextField("Pesquisar...", text: $searchText)
                }
                
                GroupBox {
                    ScrollView(.vertical) {
                        VStack {
                            ForEach(0..<30) {k in
                                HStack {
                                    Text("aaa")
                                    Spacer()
                                }
                                Divider()
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct ChatAddContactView_Previews: PreviewProvider {
    static var previews: some View {
        ChatAddContactView()
    }
}
