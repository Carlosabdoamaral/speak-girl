//
//  ProfileView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct ProfileView: View {
    
    let user : User
    
    var body: some View {
        NavigationView {
            VStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<user.posts.count) {post in
                            SmallPostView()
                        }
                    }
                }
                .padding()
                
                GroupBox {
                    HStack {
                        HStack {
                            Image(systemName: "person.fill")
                            Text("1.078")
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "person")
                            Text("\(user.friends.count)")
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "heart.fill")
                            Text("35.000")
                        }
                    }
                }
                .padding(.horizontal)
                
                GroupBox {
                    HStack {
                        Text("@\(user.username)")
                        Spacer()
                        Button("Edit", action: {
                            print("Teste")
                        })
                    }
                }
                .padding(.horizontal)
                
                GroupBox {
                    HStack {
                        Text("\(user.email)")
                        Spacer()
                        Button("Edit", action: {
                            print("Teste")
                        })
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("\(user.name)")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(
            user: User(
                name: "Carlos Amaral",
                username: "amaralzaao",
                email: "Carlosabdoamaral@icloud.com",
                password: "SenhaSenha",
                friends: ["a","a","a","a"],
                posts: [
                    Post(
                        author: "amaralzaao",
                        title: "Título",
                        content: "Coments",
                        likes: 89,
                        reactions: [1,2,1,2,4]
                    ),
                    Post(
                        author: "amaralzaao",
                        title: "Título",
                        content: "Coments",
                        likes: 89,
                        reactions: [1,2,1,2,4]
                    ),
                    Post(
                        author: "amaralzaao",
                        title: "Título",
                        content: "Coments",
                        likes: 89,
                        reactions: [1,2,1,2,4]
                    ),
                    Post(
                        author: "amaralzaao",
                        title: "Título",
                        content: "Coments",
                        likes: 89,
                        reactions: [1,2,1,2,4]
                    ),
                    Post(
                        author: "amaralzaao",
                        title: "Título",
                        content: "Coments",
                        likes: 89,
                        reactions: [1,2,1,2,4]
                    ),
                    Post(
                        author: "amaralzaao",
                        title: "Título",
                        content: "Coments",
                        likes: 89,
                        reactions: [1,2,1,2,4]
                    ),
                    Post(
                        author: "amaralzaao",
                        title: "Título",
                        content: "Coments",
                        likes: 89,
                        reactions: [1,2,1,2,4]
                    )
                ]
            )
        )
    }
}
