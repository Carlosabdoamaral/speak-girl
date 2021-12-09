//
//  UserModel.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

class UserModel : Codable, Identifiable {
    var posts : [String]?
    var name : String
    var username : String
    var email : String
    var security_email : String
    var followers : Int
    var following : Int
    var insta : String?
    var twitter : String?
    var tiktok : String?
    var snapchat : String?
    var facebook : String?
    var password : String
    var token : String?
    var mac_address: String?
    var tel : String?
}
