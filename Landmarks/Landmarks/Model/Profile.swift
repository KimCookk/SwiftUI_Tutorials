//
//  Profile.swift
//  Landmarks
//
//  Created by 김태성 on 10/26/23.
//

import Foundation

struct Profile {
    var username: String
    var profersNotifications = true
    var sesonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        
        var id: String { rawValue }
    }
}
