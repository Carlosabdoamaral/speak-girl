//
//  ProfilePublicView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 17/12/21.
//

import SwiftUI

struct ProfilePublicView: View {
    var body: some View {
        ZStack {
            VStack {
                Color.white.edgesIgnoringSafeArea(.all)
                    .frame(height: 100)
                    .padding(0)
                Color("ColorWine").edgesIgnoringSafeArea(.all)
                    .padding(0)
            }
            
            VStack {
                VStack {
                    ZStack {
                        Circle()
                        Image(systemName: "sparkles")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color("ColorWine"))
                            .padding()
                    }
                    .frame(width: 60, height: 60)
                    
                    Text("Carlos Amaral")
                        .foregroundColor(Color.black)
                        .font(.title3)
                        .fontWeight(.bold)
                        .lineLimit(1)
                    
                    Text("@amaralzaao")
                        .foregroundColor(Color.gray)
                        .fontWeight(.light)
                        .lineLimit(1)
                }
                .padding()
                .padding(.bottom)
                .frame(width: 300)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0, y: 0)
                
                ScrollView(.vertical) {
                    
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct ProfilePublicView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePublicView()
    }
}
