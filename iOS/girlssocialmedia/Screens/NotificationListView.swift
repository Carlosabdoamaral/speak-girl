//
//  NotificationListView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 17/12/21.
//

import SwiftUI

struct NotificationListView: View {
    var body: some View {
        ZStack {
            
            ScrollView(.vertical) {
                VStack {
                    ForEach(0..<15) { k in
                        if k == 0 {
                            Divider()
                            NotificationTemplateView()
                            Divider()
                        } else {
                            NotificationTemplateView()
                            Divider()
                        }
                    }
                }
            }
            .navigationTitle("Notificações")
        }
    }
}

struct NotificationListView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListView()
    }
}
