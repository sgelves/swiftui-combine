//
//  ProfileRow.swift
//  swiftui-combine
//
//  Created by Sergio Gelves on 20/07/19.
//  Copyright © 2019 Sergio Gelves. All rights reserved.
//

import SwiftUI

struct ProfileRow : View {
    
    var profile: ProfileItem
    
    var body: some View {
        HStack {
            Image(profile.imageName)
                .resizable()
                .frame(width: 100, height: 100)
            Text(profile.name)
            Spacer()
        }
    }
}

#if DEBUG
struct ProfileRow_Previews : PreviewProvider {
    
    static var previews: some View {
        Group {
            ProfileRow(profile: ProfileListService.profilesList[0])
            ProfileRow(profile: ProfileListService.profilesList[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
