//
//  Utils+Device.swift
//  Rooms
//
//  Created by Guang Lei on 2021/6/13.
//

import SwiftUI

enum Device {
    
    enum DeviceType {
        case iPhone, iPad, macOS
    }
    
    static var type: DeviceType {
        #if os(macOS)
        return .macOS
        #else
        if UIDevice.current.userInterfaceIdiom == .pad {
            return .iPad
        } else {
            return .iPhone
        }
        #endif
    }
}

extension View {
    
    @ViewBuilder func `if`<T>(_ condition: Bool, transform: (Self) -> T) -> some View where T: View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
    
    @ViewBuilder func ifElse<T:View,V:View>( _ condition:Bool,isTransform:(Self) -> T,elseTransform:(Self) -> V) -> some View {
        if condition {
            isTransform(self)
        } else {
            elseTransform(self)
        }
    }
}
