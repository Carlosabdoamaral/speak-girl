//
//  HomeView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct HomeView: View {
    @State var posts : [post] = []
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(posts) { post in
                        
                        HStack {
                            PostView(postContent: post)
                            Spacer()
                        }
                        Divider()
                    }
                }
            }
            .background(Color("ColorWine"))
            .navigationBarTitle("Menu")
            .onAppear {
                TemplateRequest().getAllPosts { (posts) in
                    self.posts = posts
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
