//
//  NotificationTemplateView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 17/12/21.
//

import SwiftUI

struct NotificationTemplateView: View {
    let notificationLabel : String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque risus et lorem cursus porttitor. Nunc vulputate tempor porttitor. Nam commodo orci ac nunc vestibulum volutpat. Vivamus purus tellus, congue in nibh sed, molestie sodales metus. Duis ac tempor sem. Proin commodo sollicitudin magna, ac molestie risus maximus vitae. Aliquam quis finibus felis. Duis massa orci, convallis ac convallis eget, porttitor et nunc"
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Title")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 3)
                        .lineLimit(2)
                    Text(notificationLabel)
                        .lineLimit(3)
                    
                }
                Spacer()
            }
        }
        .padding()
    }
}

struct NotificationTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationTemplateView()
    }
}
