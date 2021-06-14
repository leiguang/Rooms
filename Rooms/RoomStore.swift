//
//  RoomStore.swift
//  Rooms
//
//  Created by Guang Lei on 2021/6/13.
//

import Foundation

class RoomStore: ObservableObject {

    @Published var rooms: [Room]
    
    init(rooms: [Room]) {
        self.rooms = rooms
    }
    
    func addRoom() {
        let room = Room(name: "Hall 2", capacity: 2000)
        rooms.append(room)
    }
    
    func delete(at offsets: IndexSet) {
        rooms.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        rooms.move(fromOffsets: source, toOffset: destination)
    }
}
