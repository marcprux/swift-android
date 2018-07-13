//
//  ViewSwiftView.swift
//  Android
//
//  Created by Marco Estrella on 7/13/18.
//

import Foundation
import java_swift
import java_lang
import JNI

public extension Android.View {
    
    public typealias SwiftView = AndroidSwiftView
}

open class AndroidSwiftView: JavaObject {
    
    // MARK: - Initialization
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
    }
    
    public convenience init(context: Android.Content.Context){
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava(value: context, locals: &__locals)
        
        let __object = JNIMethod.NewObject(
            className: JNICache.className,
            classCache: &JNICache.jniClass,
            methodSig: "(Landroid/content/Context;)V",
            methodCache: &JNICache.MethodID.newMethod,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    public var x: Float {
        
        get { return getX() ?? 0.0 }
        
        set { setX(newValue) }
    }
    
    public var y: Float {
        
        get { return getY() ?? 0.0 }
        
        set { setY(newValue) }
    }
    
    public var layoutParams: Android.View.ViewParamsLayout? {
        
        get { return getLayoutParams() }
        
        set { setLayoutParams(newValue) }
    }
}

// MARK: - Methods

public extension AndroidSwiftView {
    
    @inline(__always)
    internal func getX() -> Float? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __return = JNIMethod.CallFloatMethod(
            object: javaObject,
            methodName: "getX",
            methodSig: "()F",
            methodCache: &JNICache.MethodID.getX,
            args: &__args,
            locals: &__locals )
        
        return __return
    }
    
    @inline(__always)
    internal func setX(_ x: Float) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        __args[0] = jvalue(f: jfloat(x))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setX",
            methodSig: "(F)V",
            methodCache: &JNICache.MethodID.setX,
            args: &__args,
            locals: &__locals )
    }
    
    @inline(__always)
    internal func getY() -> Float? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __return = JNIMethod.CallFloatMethod(
            object: javaObject,
            methodName: "getY",
            methodSig: "()F",
            methodCache: &JNICache.MethodID.getY,
            args: &__args,
            locals: &__locals )
        
        return __return
    }
    
    @inline(__always)
    internal func setY(_ y: Float) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        __args[0] = jvalue(f: jfloat(y))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setY",
            methodSig: "(F)V",
            methodCache: &JNICache.MethodID.setY,
            args: &__args,
            locals: &__locals )
    }
    
    @inline(__always)
    internal func getLayoutParams() -> Android.View.ViewParamsLayout? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __return = JNIMethod.CallObjectMethod(
            object: javaObject,
            methodName: "getLayoutParams",
            methodSig: "()Lorg/pureswift/swiftandroidsupport/view/SwiftViewLayoutParams;",
            methodCache: &JNICache.MethodID.getLayoutParams,
            args: &__args,
            locals: &__locals )
        
        return Android.View.ViewParamsLayout.init(javaObject: __return)
    }
    
    @inline(__always)
    internal func setLayoutParams(_ layoutParams: Android.View.ViewParamsLayout?) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        __args[0] = JNIType.toJava(value: layoutParams, locals: &__locals)
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setLayoutParams",
            methodSig: "(Lorg/pureswift/swiftandroidsupport/view/SwiftViewLayoutParams;)V",
            methodCache: &JNICache.MethodID.setLayoutParams,
            args: &__args,
            locals: &__locals )
    }
    
    public func setBackgroundColor(_ color: Int) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        __args[0] = jvalue(i: jint(color))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setBackgroundColor",
            methodSig: "(I)V",
            methodCache: &JNICache.MethodID.setBackgroundColor,
            args: &__args,
            locals: &__locals )
    }
    
    public func addView(_ view: Android.View.SwiftView) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        __args[0] = JNIType.toJava(value: view, locals: &__locals)
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "addView",
            methodSig: "(Lorg/pureswift/swiftandroidsupport/view/SwiftView;)V",
            methodCache: &JNICache.MethodID.addView1,
            args: &__args,
            locals: &__locals )
    }
    
    public func addView(_ view: Android.View.SwiftView, width: Int, height: Int) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        
        __args[0] = JNIType.toJava(value: view, locals: &__locals)
        __args[1] = jvalue(i: jint(width))
        __args[2] = jvalue(i: jint(height))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "addView",
            methodSig: "(Lorg/pureswift/swiftandroidsupport/view/SwiftView;II)V",
            methodCache: &JNICache.MethodID.addView2,
            args: &__args,
            locals: &__locals )
    }
    
    public func addView(_ view: Android.View.SwiftView, index: Int) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        
        __args[0] = JNIType.toJava(value: view, locals: &__locals)
        __args[1] = jvalue(i: jint(index))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "addView",
            methodSig: "(Lorg/pureswift/swiftandroidsupport/view/SwiftView;I)V",
            methodCache: &JNICache.MethodID.addView3,
            args: &__args,
            locals: &__locals )
    }
    
    public func addView(_ view: Android.View.SwiftView, params: Android.View.ViewParamsLayout ) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        
        __args[0] = JNIType.toJava(value: view, locals: &__locals)
        __args[1] = JNIType.toJava(value: params, locals: &__locals)
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "addView",
            methodSig: "(Lorg/pureswift/swiftandroidsupport/view/SwiftView;Lorg/pureswift/swiftandroidsupport/view/SwiftViewLayoutParams;)V",
            methodCache: &JNICache.MethodID.addView4,
            args: &__args,
            locals: &__locals )
    }
    
    public func addView(_ view: Android.View.SwiftView, index: Int, params: Android.View.ViewParamsLayout ) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        
        __args[0] = JNIType.toJava(value: view, locals: &__locals)
        __args[1] = jvalue(i: jint(index))
        __args[2] = JNIType.toJava(value: params, locals: &__locals)
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "addView",
            methodSig: "(Lorg/pureswift/swiftandroidsupport/view/SwiftView;ILorg/pureswift/swiftandroidsupport/view/SwiftViewLayoutParams;)V",
            methodCache: &JNICache.MethodID.addView5,
            args: &__args,
            locals: &__locals )
    }
}

// MARK: - JNICache

internal extension AndroidSwiftView {
    
    /// JNI Cache
    struct JNICache {
        
        /// JNI Java class signature
        static let classSignature = SwiftSupport.View.className(["SwiftView"])
        
        /// JNI Java class name
        static let className = classSignature.rawValue
        
        /// JNI Java class
        static var jniClass: jclass?
        
        struct FieldID {
            
            static var INVISIBLE: jfieldID?
            static var VISIBLE: jfieldID?
        }
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var newMethod: jmethodID?
            static var setBackgroundColor: jmethodID?
            static var setX: jmethodID?
            static var getX: jmethodID?
            static var setY: jmethodID?
            static var getY: jmethodID?
            static var setLayoutParams: jmethodID?
            static var getLayoutParams: jmethodID?
            static var addView1: jmethodID?
            static var addView2: jmethodID?
            static var addView3: jmethodID?
            static var addView4: jmethodID?
            static var addView5: jmethodID?
        }
    }
}
