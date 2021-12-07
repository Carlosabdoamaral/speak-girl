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
            VStack {
                ScrollView(.vertical) {
                    ForEach(0..<5) { i in
                        
                        if i == 0 {
                            Divider()
                            PostView()
                            Divider()
                        } else {
                            PostView()
                            Divider()
                        }
                    }
                }
                
            }
            .background(Color("ColorWine"))
            .navigationBarTitle("Menu")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
