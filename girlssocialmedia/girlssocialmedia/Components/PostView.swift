//
//  PostView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 06/12/21.
//

import SwiftUI

struct PostView: View {
    @State private var isAnonymous : Bool = false
    @State private var liked : Bool = false
    let postContent : post
    
    let username : String = "Amaralzaao"
    
    var body: some View {
        NavigationLink(destination: PostDetailsView(post: postContent)) {
            VStack(alignment: .leading) {
                HStack {
                    Text("\(username)")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(.trailing, 10)
                    
                    Text("DD/MM/YYYY")
                        .font(.subheadline)
                        .fontWeight(.ultraLight)
                }
                .foregroundColor(Color("ColorNude"))
                
                Text("\(postContent.body)")
                    .lineLimit(5)
                    .font(.caption)
                    .foregroundColor(Color("ColorWhitePastel"))
                    .multilineTextAlignment(.leading)
                
                HStack {
                    if liked {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .onTapGesture {
                                self.liked = false
                            }
                    }
                    else {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .onTapGesture {
                                self.liked = true
                            }
                    }
                    
                    Image(systemName: "text.bubble")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 10)
                }
                .foregroundColor(Color("ColorWhitePastel"))
                .padding(.vertical, 5)
            }
            .padding()
            .background(Color("ColorWine"))
        }
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(postContent: post(title: "Title", body: "body"))
            .previewLayout(.sizeThatFits)
    }
}
