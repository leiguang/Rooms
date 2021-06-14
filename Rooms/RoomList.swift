//
//  RoomList.swift
//  Rooms
//
//  Created by Guang Lei on 2021/6/12.
//

import SwiftUI

struct RoomList: View {
    
    @ObservedObject var store: RoomStore
    
    var body: some View {
        
        NavigationView {
            List {
                Section {
                    Button("Add Room") {
                        store.addRoom()
                    }
                }
                Section {
                    ForEach(store.rooms) { room in
                        RoomCell(room: room)
                    }
                    .onDelete(perform: store.delete)
                    .onMove(perform: store.move)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Rooms")
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct RoomCell: View {
    let room: Room
    
    var body: some View {
        NavigationLink(destination: RoomDetail(room: room)) {
            Image(room.thumbnailName)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RoomList(store: RoomStore(rooms: testData))
            
            RoomList(store: RoomStore(rooms: testData))
                .environment(\.sizeCategory, .extraExtraLarge)
            
            RoomList(store: RoomStore(rooms: testData))
                .environment(\.colorScheme, .dark)
            
            RoomList(store: RoomStore(rooms: testData))
                .environment(\.layoutDirection, .rightToLeft)
            
            RoomList(store: RoomStore(rooms: testData))
                .environment(\.locale, .init(identifier: "zh-Hans"))
        }
    }
}
