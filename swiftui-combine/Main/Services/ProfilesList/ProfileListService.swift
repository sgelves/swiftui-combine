//
//  ProfileListService.swift
//  swiftui-combine
//
//  Created by Sergio Gelves on 20/07/19.
//  Copyright © 2019 Sergio Gelves. All rights reserved.
//

import Foundation

class ProfileListService {
    
    static let profilesList: [ProfileItem] = LoadFileHelper.load("profilesData.json")
    static let landMarkData: [Landmark] = LoadFileHelper.load("landmarkData.json")
    
}
