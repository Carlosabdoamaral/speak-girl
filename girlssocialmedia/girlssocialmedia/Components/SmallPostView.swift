//
//  SmallPostView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct SmallPostView: View {
    var body: some View {
        ZStack {
            
        }
        .frame(width: 100, height: 100, alignment: .center)
        .background(Color.accentColor)
        .cornerRadius(10)
    }
}

struct SmallPostView_Previews: PreviewProvider {
    static var previews: some View {
        SmallPostView()
            .previewLayout(.sizeThatFits)
    }
}
