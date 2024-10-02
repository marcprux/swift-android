//
//  AndroidContextSystemService.swift
//  PureSwift
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import java_swift

public extension SwiftAndroid.Content.Context {
    
    typealias SystemService = AndroidContextSystemService
}

public extension SwiftAndroid.Content.Context.SystemService {
    
    typealias Name = AndroidContextSystemServiceName
}

public protocol AndroidContextSystemService {
    
    static var systemServiceName: SwiftAndroid.Content.Context.SystemService.Name { get }
}

// MARK: - Supporting Types

public struct AndroidContextSystemServiceName: RawRepresentable {
    
    public let rawValue: String
    
    public init(rawValue: String) {
        
        self.rawValue = rawValue
    }
    
    public static let bluetooth = SwiftAndroid.Content.Context.SystemService.Name(rawValue: SwiftAndroid.Content.Context.bluetoothService!)
    
    public static let layoutInflater = SwiftAndroid.Content.Context.SystemService.Name(rawValue: SwiftAndroid.Content.Context.layoutInflaterService!)
    
    public static let inputMethodService = SwiftAndroid.Content.Context.SystemService.Name(rawValue: SwiftAndroid.Content.Context.inputMethodService!)
}

extension SwiftAndroid.Content.Context.SystemService.Name: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        
        self.init(rawValue: value)
    }
}
