//
//  ExplicitView.swift
//  swiftui-combine
//
//  Created by Sergio Gelves on 20/07/19.
//  Copyright © 2019 Sergio Gelves. All rights reserved.
//

import SwiftUI

struct PictureView : View {
    
    var image: String
    
    var body: some View {
        
        Image(image)
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 5)
        
    }
}

#if DEBUG
struct ExplicitView_Previews : PreviewProvider {
    static var previews: some View {
        PictureView(image: "beach")
    }
}
#endif
