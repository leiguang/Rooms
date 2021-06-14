//
//  RoomDetail.swift
//  Rooms
//
//  Created by Guang Lei on 2021/6/13.
//

import SwiftUI

struct RoomDetail: View {
    
    let room: Room
    @State var zoomed: Bool = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(room.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        zoomed.toggle()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if room.hasVideo && !zoomed {
                Image(systemName: "video.fill")
                    .font(.title)
                    .padding()
                    .transition(.move(edge: .leading))
            }
        }
        .navigationTitle(room.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                RoomDetail(room: testData[0])
            }
            NavigationView {
                RoomDetail(room: testData[1])
            }
        }
    }
}
