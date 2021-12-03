//
//  UserModel.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var name : String
    var username : String
    var email : String
    var password : String
    var friends : [String] // O @ do usuário
    var posts : [Post]
}
