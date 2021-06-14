//
//  RoomsApp.swift
//  Rooms
//
//  Created by Guang Lei on 2021/6/12.
//

import SwiftUI

@main
struct RoomsApp: App {
    var body: some Scene {
        WindowGroup {
            RoomList(store: RoomStore(rooms: testData))
        }
    }
}
