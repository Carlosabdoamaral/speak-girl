//
//  HomeView.swift
//  girlssocialmedia WatchKit Extension
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators:false) {
                ForEach(0..<10) {post in
                    HStack {
                        HomePostView()
                    }
                }
            }
            .navigationBarTitle("Menu")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
