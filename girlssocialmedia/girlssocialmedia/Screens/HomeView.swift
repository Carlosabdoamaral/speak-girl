//
//  HomeView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Spacer()
                    VStack(alignment: .center) {
                        ForEach(0..<5) {post in
                            BigPostView()
                        }
                    }
                    Spacer()
                }
            }
            .padding(.horizontal)
            .padding(.top, 20)
            .listStyle(PlainListStyle())
            .navigationBarTitle("Menu")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
