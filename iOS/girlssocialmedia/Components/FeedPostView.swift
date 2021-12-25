//
//  FeedPostView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct FeedPostView: View {
    @State private var liked : Bool = false
    @State var isShowingReactions : Bool = false
    
    func share() {
        guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
    
    var body: some View {
        NavigationLink(destination: PostDetailsView()){
            HStack {
                NavigationLink(destination: ProfilePublicView()) {
                    ZStack {
                        Circle()
                        Image(systemName: "sparkles")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color("ColorWine"))
                            .padding()
                    }
                    .frame(width: 60, height: 60)
                }
                
                VStack {
                    
                    HStack {
                        Text("Amaralzaao")
                            .font(.headline)
                        Text("DD/MM/YYYY")
                            .fontWeight(.ultraLight)
                            .padding(.horizontal, 10)
                        
                        Spacer()
                    }
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lectus sit amet enim facilisis vestibulum. Etiam at nibh lectus. Nulla at volutpat erat. Nulla ac tempus nunc. Vivamus vitae diam non tellus bibendum lacinia vitae quis elit. Phasellus tincidunt pellentesque est egestas consequat. Donec ultricies mi at dolor lobortis, nec faucibus lorem tristique. Nullam dapibus nisi ut vulputate tristique. Nulla volutpat at risus ac sagittis.")
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                    
                    HStack {
                        if liked {
                            Image(systemName: "heart.fill")
                                .onTapGesture {
                                    self.liked = false
                                }
                        }
                        else {
                            Button {
                                self.liked = true
                                self.isShowingReactions = true
                            } label: {
                                Image(systemName: "heart")
                            }
                            .sheet(isPresented: $isShowingReactions) {
                                ReactionsView()
                            }
                        }
                        Image(systemName: "text.bubble")
                        Spacer()
                        
                        Button(action: share) {
                            Image(systemName: "square.and.arrow.up")
                        }
                    }
                    .font(.headline)
                    .padding(.top, 1)
                }
            }
        }
    }
}

struct FeedPostView_Previews: PreviewProvider {
    static var previews: some View {
        FeedPostView()
    }
}
