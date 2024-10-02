//
//  AndroidContextSystemService.swift
//  PureSwift
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import java_swift

public extension AndroidSDK.Content.Context {
    
    typealias SystemService = AndroidContextSystemService
}

public extension AndroidSDK.Content.Context.SystemService {
    
    typealias Name = AndroidContextSystemServiceName
}

public protocol AndroidContextSystemService {
    
    static var systemServiceName: AndroidSDK.Content.Context.SystemService.Name { get }
}

// MARK: - Supporting Types

public struct AndroidContextSystemServiceName: RawRepresentable {
    
    public let rawValue: String
    
    public init(rawValue: String) {
        
        self.rawValue = rawValue
    }
    
    public static let bluetooth = AndroidSDK.Content.Context.SystemService.Name(rawValue: AndroidSDK.Content.Context.bluetoothService!)
    
    public static let layoutInflater = AndroidSDK.Content.Context.SystemService.Name(rawValue: AndroidSDK.Content.Context.layoutInflaterService!)
    
    public static let inputMethodService = AndroidSDK.Content.Context.SystemService.Name(rawValue: AndroidSDK.Content.Context.inputMethodService!)
}

extension AndroidSDK.Content.Context.SystemService.Name: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        
        self.init(rawValue: value)
    }
}
