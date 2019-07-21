//
//  ProfilesList.swift
//  swiftui-combine
//
//  Created by Sergio Gelves on 21/07/19.
//  Copyright © 2019 Sergio Gelves. All rights reserved.
//

import SwiftUI

struct ProfilesList : View {
    var body: some View {
        
        NavigationView {
            
            List(ProfileListService.profilesList) { profileItem in
                
                NavigationLink(destination: ProfileView(profile: profileItem)) {
                    
                    ProfileRow(profile: profileItem)
                }
            }
            
            .navigationBarTitle("Perfis")
        }
    }
}

#if DEBUG
struct ProfilesList_Previews : PreviewProvider {
    static var previews: some View {
        ProfilesList()
    }
}
#endif
