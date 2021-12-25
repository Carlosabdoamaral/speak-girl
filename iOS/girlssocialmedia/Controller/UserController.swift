//
//  UserController.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 18/12/21.
//

import SwiftUI

class GetUsers {
    func getAllUsers(completion: @escaping ([UserModel]) -> ()) {
        guard let url = URL(string: "http://localhost:8080/users") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let users = try! JSONDecoder().decode([UserModel].self, from: data!)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
}

class DeleteUser {
    let i : Int = 6
    func deleteUser(completion: @escaping (UserModel) -> () ) {
        guard let url = URL(string: "http://localhost:8080/users/delete/\(self.i)") else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let user = try! JSONDecoder().decode(UserModel.self, from: data!)
            
            DispatchQueue.main.async {
                completion(user)
            }
        }
        .resume()
    }
}

// ADICIONAR O BODY
class NewUser {
    func newUser(completion: @escaping ((UserModel) -> () )) {
        guard let url = URL(string: "http://localhost:8080/users/new") else {return}
        URLSession.shared.dataTask(with: url) { URLResponse, _, _ in
            let res = URLResponse
            print(res)
        }
        .resume()
    }
}
