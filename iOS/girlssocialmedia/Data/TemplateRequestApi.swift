//
//  TemplateRequestApi.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 08/12/21.
//

import SwiftUI

struct post : Codable, Identifiable {
    let id = UUID()
    var title : String
    var body : String
}

class TemplateRequest {
    func getAllPosts(completion: @escaping ([post]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let posts = try! JSONDecoder().decode([post].self, from: data!)
            
            DispatchQueue.main.async {
                completion(posts)
            }
        }
        .resume()
    }
}
