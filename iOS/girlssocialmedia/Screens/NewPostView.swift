//
//  NewPostView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct NewPostView: View {
    
    //VAR's
    @State var isAnonymous : Bool = false
    @State var wantComment : Bool = true
    @State var author : String = "Amaralzaao"
    @State var title : String = ""
    @State var content : String = "Sinta-se confortável para contar o que aconteceu"
    @State var date : Date = Date.now
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("ColorWine").edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        GroupBox {
                            TextField("Insira um título", text: $title)
                            Divider()
                            TextEditor(text: $content)
                                .frame(height: 300)
                                .background(Color.black.opacity(0))
                                
                        }
                        
                        GroupBox {
                            Toggle(isOn: $isAnonymous) {
                                Text("Ser anonimo(a)(e)?")
                            }
                            
                            Divider()
                            
                            Toggle(isOn: $wantComment) {
                                Text("Permitir comentários?")
                            }
                        }
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                            Text("Postar!")
                                .foregroundColor(Color("ColorWine"))
                        }
                        .frame(height: 40)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                }
            }
            .navigationBarTitle("Criar post")
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
