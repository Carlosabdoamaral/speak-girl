//
//  NotReadyView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct NotReadyView: View {
    var body: some View {
        ZStack {
            Color("ColorWine").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Image(systemName: "hammer.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    
                    Text("Tela em desenvolvimento")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                }
                Spacer()
            }
        }
    }
}

struct NotReadyView_Previews: PreviewProvider {
    static var previews: some View {
        NotReadyView()
    }
}
