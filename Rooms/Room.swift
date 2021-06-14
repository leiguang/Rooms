//
//  Room.swift
//  Rooms
//
//  Created by Guang Lei on 2021/6/12.
//

import Foundation

struct Room: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { name }
    var thumbnailName: String { name + "Thumb" }
}

#if DEBUG
let testData = [
    Room(name: "Observation Deck", capacity: 6, hasVideo : true),
    Room(name: "Executive Suite", capacity: 8, hasVideo : false),
    Room(name: "Charter Jet", capacity: 16, hasVideo : true),
    Room(name: "Dungeon", capacity: 10, hasVideo : true),
    Room(name: "Panorama", capacity: 12, hasVideo : false),
    Room(name: "Oceanfront", capacity: 8, hasVideo : false),
    Room(name: "Rainbow Room", capacity: 10, hasVideo : true),
    Room(name: "Pastoral", capacity: 7, hasVideo : false),
    Room(name: "Elephant Room", capacity: 1, hasVideo : false),
]
#endif
