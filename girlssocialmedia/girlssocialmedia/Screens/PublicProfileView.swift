//
//  PublicProfileView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 03/12/21.
//

import SwiftUI

struct PublicProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    HStack {
                        Spacer()
                        VStack {
                            Text("Username")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            
                            HStack {
                                HStack {
                                    Image(systemName: "person.fill")
                                    Text("2.5K")
                                }
                                .padding(.horizontal)
                                
                                HStack {
                                    Image(systemName: "heart.fill")
                                    Text("46.4K")
                                }
                                .padding(.horizontal)
                                
                            }
                        }
                        Spacer()
                    }
                }
                .padding(.top, 40)
                .foregroundColor(Color.white)
                .frame(height: 200)
                .background(LinearGradient(colors: [Color.pink, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing))
                Spacer()
                
                ScrollView(.vertical) {
                    VStack {
                        GroupBox {
                            HStack {
                                Spacer()
                                Text("Bio")
                                Spacer()
                            }
                        }
                        
                        GroupBox {
                            HStack {
                                Text("Instagram")
                                Spacer()
                            }
                            
                            Divider()
                            
                            HStack {
                                Text("Twitter")
                                Spacer()
                            }
                            
                            Divider()
                            
                            HStack {
                                Text("Instagram")
                                Spacer()
                            }
                        }
                        
                        GroupBox {
                            
                            ForEach(0..<15) {i in
                                HStack {
                                    Text("Post #\(i)")
                                    Spacer()
                                }
                                Divider()
                            }
                            
                        }
                        
                        Spacer()
                    }
                    .padding()
                    
                }
                
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct PublicProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PublicProfileView()
    }
}
