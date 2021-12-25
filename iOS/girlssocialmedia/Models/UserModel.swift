//
//  UserModel.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

class UserModel : Codable, Identifiable {
    var id : Int!
    var icon : String!
    var username : String!
    var name : String!
    var email : String!
    var securityemail : String!
    var tel : String!
    var bio : String!
    var token = UUID()
    let auth : String!
    let mac : String!
    var password : String!
    var followers : Int?
    var following : Int?
}
