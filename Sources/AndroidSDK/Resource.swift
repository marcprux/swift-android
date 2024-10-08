//
//  AndroidResource.swift
//  PureSwift
//
//  Created by Alsey Coleman Miller on 3/22/18.
//

import Foundation
import java_swift

public extension AndroidSDK {
    
    typealias R = AndroidResource
}

public extension AndroidSDK.R {
    
    typealias ID = AndroidResourceIdentifier
    
    typealias Layout = AndroidLayoutIdentifier
}

public protocol AndroidResource: RawRepresentable {
    
    var rawValue: Int { get }
    
    init(rawValue: Int)
}

public struct AndroidResourceIdentifier: AndroidResource {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

public struct AndroidLayoutIdentifier: AndroidResource {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

// MARK: - Convenience Intializers

public extension AndroidResource {
    
    init(name: String, className: String) {
        
        var jniClass: jclass?
        
        var cache: jmethodID?
        
        let __value = JNIField.GetStaticIntField(fieldName: name,
                                                 fieldType: "I",
                                                 fieldCache: &cache,
                                                 className: className,
                                                 classCache: &jniClass )
        
        let value = Int(__value)
        
        self.init(rawValue: value)
    }
}
