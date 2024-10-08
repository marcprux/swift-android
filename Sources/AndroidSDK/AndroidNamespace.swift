//
//  AndroidSDK.swift
//  PureSwift
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import JNI

/// Android namespace.
public enum AndroidSDK: JavaPackage {

    public static let package: JNIPackage = ["android"]
    
    public enum Util: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["util"]
    }
    
    public enum OS: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["os"]
    }
    
    public enum Content: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["content"]
        
        public enum PM: JavaPackage {
            
            public static let package: JNIPackage = AndroidSDK.Content.package + ["pm"]
        }
        
        public enum Res: JavaPackage {
            
            public static let package: JNIPackage = AndroidSDK.Content.package + ["res"]
        }
    }
    
    public enum Widget: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["widget"]
    }
    
    public enum View: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["view"]
        
        public enum Inputmethod: JavaPackage {
            
            public static let package: JNIPackage = AndroidSDK.View.package + ["inputmethod"]
        }
        
        public enum Animation: JavaPackage {
            
            public static let package: JNIPackage = AndroidSDK.View.package + ["animation"]
        }
    }
    
    public enum App: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["app"]
    }
    
    public enum Bluetooth: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["bluetooth"]
        
        public enum LE: JavaPackage {
            
            public static let package: JNIPackage = AndroidSDK.Bluetooth.package + ["le"]
        }
    }
    
    public enum Graphics: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["graphics"]
        
        public enum Drawable: JavaPackage {
            
            public static let package: JNIPackage = AndroidSDK.Graphics.package + ["drawable"]
        }
    }
    
    public enum Text: JavaPackage {
        
        public static let package: JNIPackage = AndroidSDK.package + ["text"]
    }
}

@available(*, deprecated)
public enum SupportV7: JavaPackage {
    
    public static let package: JNIPackage = ["android", "support", "v7"]
    
    public enum Widget: JavaPackage {
        
        public static let package: JNIPackage = SupportV7.package + ["widget"]
    }
    
    public enum App: JavaPackage {
        
        public static let package: JNIPackage = SupportV7.package + ["app"]
    }
}

@available(*, deprecated)
public enum SupportV4: JavaPackage {
    
    public static let package: JNIPackage = ["android", "support", "v4"]
    
    public enum Widget: JavaPackage {
        
        public static let package: JNIPackage = SupportV4.package + ["widget"]
    }
    
    public enum View: JavaPackage {
        
        public static let package: JNIPackage = SupportV4.package + ["view"]
    }
    
    public enum Content: JavaPackage {
        
        public static let package: JNIPackage = SupportV4.package + ["content"]
    }
    
    public enum Graphics: JavaPackage {
        
        public static let package: JNIPackage = SupportV4.package + ["graphics"]
        
        public enum Drawable: JavaPackage {
            
            public static let package: JNIPackage = SupportV4.Graphics.package + ["drawable"]
        }
    }
}

public enum SupportDesign: JavaPackage {
    
    public static let package: JNIPackage = ["android", "support", "design"]
    
    public enum Widget: JavaPackage {
        
        public static let package: JNIPackage = SupportDesign.package + ["widget"]
    }
}

public enum AndroidX: JavaPackage {
    
    public static let package: JNIPackage = ["androidx"]
    
    public enum Activity: JavaPackage {
        
        public static let package: JNIPackage = AndroidX.package + ["activity"]
    }
    
    public enum AppCompat: JavaPackage {
        
        public static let package: JNIPackage = AndroidX.package + ["appcompat"]
        
        public enum App: JavaPackage {
            
            public static let package: JNIPackage = AndroidX.AppCompat.package + ["app"]
        }
    }
}

/// Support Library namespace.
public enum SwiftSupport: JavaPackage {
    
    public static let package: JNIPackage = ["org", "pureswift", "swiftandroidsupport"]
    
    public enum Bluetooth: JavaPackage {
        
        public static let package: JNIPackage = SwiftSupport.package + ["bluetooth"]
        
        public enum LE: JavaPackage {
            
            public static let package: JNIPackage = SwiftSupport.Bluetooth.package + ["le"]
        }
    }
    
    public enum Widget: JavaPackage {
        
        public static let package: JNIPackage = SwiftSupport.package + ["widget"]
    }
    
    public enum App: JavaPackage {
        
        public static let package: JNIPackage = SwiftSupport.package + ["app"]
    }
    
    public enum Content: JavaPackage {
        
        public static let package: JNIPackage = SwiftSupport.package + ["content"]
    }
    
    public enum RecyclerView: JavaPackage {
        
        public static let package: JNIPackage = SwiftSupport.package + ["recyclerview"]
    }
    
    public enum View: JavaPackage {
        
        public static let package: JNIPackage = SwiftSupport.package + ["view"]
        
        public enum Animation: JavaPackage {
            
            public static let package: JNIPackage = AndroidSDK.View.package + ["animation"]
        }
    }
    public enum Text: JavaPackage {
        
        public static let package: JNIPackage = SwiftSupport.package + ["text"]
    }
}

public protocol JavaPackage {
    
    static var package: JNIPackage { get }
}

public extension JavaPackage {
    
    static func className(_ metaClass: JNIMetaClass) -> JNIClassName {
        return (Self.package ☕️ metaClass)
    }
}

internal extension JNIPackage {
    
    static func + (lhs: JNIPackage, rhs: [String]) -> JNIPackage {
        
        return JNIPackage(elements: lhs.elements + rhs)!
    }
}
