//
//  ProfileNavLink.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct ProfileNavLink: View {
    var body: some View {
        HStack {
            ZStack {
                Circle()
                Image(systemName: "sparkles")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color("ColorWine"))
                    .padding()
            }
            .frame(width: 60, height: 60)
            
            VStack(alignment: .leading) {
                Text("Carlos Amaral")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("@amaralzaao")
            }
            
            Spacer()
        }
    }
}

struct ProfileNavLink_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNavLink()
    }
}
