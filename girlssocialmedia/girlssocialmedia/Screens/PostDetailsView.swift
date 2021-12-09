//
//  PostDetailsView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 08/12/21.
//

import SwiftUI

struct PostDetailsView: View {
    let post : post;
    
    var body: some View {
        ScrollView(.vertical){
            VStack {
                Text("\(post.title)")
                    .lineLimit(1)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                Text("\(post.body)")
                    .font(.body)
                    .foregroundColor(Color.white)
                    .padding(.vertical)
            }
            .padding(.horizontal)
        }
    }
}

struct PostDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailsView(post: post(title: "Title", body: "body"))
    }
}
