//
//  TemplateUserData.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 03/12/21.
//

import SwiftUI

let userTemplate : User = User(
    name: "Carlos Amaral",
    username: "amaralzaao",
    email: "Carlosabdoamaral@icloud.com",
    password: "Senha_admin123",
    friends: ["Joao", "pedro"],
    posts: [
        Post(
        author: "amaralzaao",
        title: "Titulo",
        content: "Conteudo",
        likes: 5,
        reactions: [10,1,2]
        )
    ]
)
