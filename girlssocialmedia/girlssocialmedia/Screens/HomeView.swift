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
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    ForEach(0..<5) {post in
                        HStack {
                            Spacer()
                            BigPostView()
                            Spacer()
                        }
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
