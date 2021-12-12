//
//  HomeView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("ColorWine").edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(0..<20) { i in
                            FeedPostView()
                                .padding(.vertical, 15)
                            Divider()
                        }
                        Spacer()
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Menu")
            .navigationBarItems(trailing: HStack {
                NavigationLink(destination: ChatListView()) {
                    Image(systemName: "paperplane.fill")
                }
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
