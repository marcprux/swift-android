//
//  WidgetImageView.swift
//  Android
//
//  Created by Marco Estrella on 11/27/18.
//

import Foundation
import java_swift
import java_lang
import JNI

public extension SwiftAndroid.Widget {
    
    typealias ImageView = AndroidImageView
}

open class AndroidImageView: AndroidView {
    
    // MARK: - Initialization
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
    }
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public convenience init(context: SwiftAndroid.Content.Context){
        
        self.init(javaObject: nil)
        bindNewJavaObject(context: context)
    }
    
    public func bindNewJavaObject(context: SwiftAndroid.Content.Context){
        
        let hasOldJavaObject = javaObject != nil
        
        /// Release old swift value.
        if hasOldJavaObject {
            
            try! finalize()
        }
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava(value: context, locals: &__locals)
        
        let __object = JNIMethod.NewObject(
            className: JNICacheImageView.className,
            classCache: &JNICacheImageView.jniClass,
            methodSig: "(Landroid/content/Context;)V",
            methodCache: &JNICacheImageView.MethodID.newMethod,
            args: &__args,
            locals: &__locals )
        
        self.javaObject = __object
        
        JNI.DeleteLocalRef( __object )
    }
}

public extension SwiftAndroid.Widget.ImageView {
    
    func setImageResource(_ resId: Int) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue(i: jint(resId))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setImageResource",
            methodSig: "(I)V",
            methodCache: &JNICacheImageView.MethodID.setImageResource,
            args: &__args,
            locals: &__locals )
    }
}

internal extension SwiftAndroid.Widget.ImageView {
    
    /// JNI Cache
    struct JNICacheImageView {
        
        /// JNI Java class signature
        static let classSignature = SwiftAndroid.Widget.className(["ImageView"])
        
        /// JNI Java class name
        static let className = classSignature.rawValue
        
        /// JNI Java class
        static var jniClass: jclass?
        
        /// JNI Method ID cache
        struct MethodID {
            static var newMethod: jmethodID?
            static var setImageResource: jmethodID?
        }
    }
}
