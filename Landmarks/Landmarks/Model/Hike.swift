//
//  Hike.swift
//  Landmarks
//
//  Created by 김태성 on 10/18/23.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
//
//"name":"Lonesome Ridge Trail",
//"id":1001,
//"distance":4.5,
//"difficulty":3,
//"observations":[
//    {
//        "elevation":[
//            291.65263635636268,
//            309.26016677925196
//        ],
//        "pace":[
//            396.08716481908732,
//            403.68937873525232
//        ],
//        "heartRate":[
//            117.16351898665887,
//            121.95815455919609
//        ],
//        "distanceFromStart":0
//    }
