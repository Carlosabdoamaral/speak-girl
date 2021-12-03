//
//  PostModel.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct Post : Identifiable {
    var id = UUID()
    var author : String // Username
    var title : String
    var content : String
    var likes : Int
    var reactions : [Int]
}
