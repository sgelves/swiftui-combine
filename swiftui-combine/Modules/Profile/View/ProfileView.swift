//
//  ContentView.swift
//  swiftui-combine
//
//  Created by Sergio Gelves on 20/07/19.
//  Copyright © 2019 Sergio Gelves. All rights reserved.
//

import SwiftUI

struct ProfileView : View {
    
    var profile: ProfileItem
    
    var body: some View {
        
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            PictureView(image: profile.imageName)
                .frame(width: 300, height: 300)
                .offset(y: -200)
                .padding(.bottom, -200)
            
            VStack(alignment: .leading) {
                Text(profile.name)
                    .font(.title)
                    HStack {
                        Text(profile.gender.rawValue)
                            .font(.subheadline)
                            Spacer()
                            Text("1km")
                                .font(.subheadline)
                        }
            }.padding()
            
            Spacer()
        }.padding(0)
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ProfileView(profile: ProfileListService.profilesList[0])
    }
}
#endif
