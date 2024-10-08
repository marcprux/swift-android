//
//  WidgetAbsSeekBar.swift
//  Android
//
//  Created by Marco Estrella on 12/12/18.
//

import Foundation
import java_swift
import java_lang
import JNI

public extension AndroidSDK.Widget {
    
    typealias AbsSeekBar = AndroidAbsSeekBar
}

/* https://developer.android.com/reference/android/widget/AbsSeekBar
 *
 * AbsSeekBar extends the capabilities of ProgressBar by adding a draggable thumb.
 */
open class AndroidAbsSeekBar: AndroidProgressBar {
    
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
    
    /// Create a new progress bar with range 0...100 and initial progress of 0.
    public convenience init(context: AndroidSDK.Content.Context) {
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava(value: context, locals: &__locals)
        
        let __object = JNIMethod.NewObject(
            className: JNICacheAbsSeekBar.className,
            classCache: &JNICacheAbsSeekBar.jniClass,
            methodSig: "(Landroid/content/Context;)V",
            methodCache: &JNICacheAbsSeekBar.MethodID.init_method_1,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    public convenience init(context: AndroidSDK.Content.Context, attrs: JavaObject) {
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava(value: context, locals: &__locals)
        __args[1] = JNIType.toJava(value: attrs, locals: &__locals)
        
        let __object = JNIMethod.NewObject(
            className: JNICacheAbsSeekBar.className,
            classCache: &JNICacheAbsSeekBar.jniClass,
            methodSig: "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
            methodCache: &JNICacheAbsSeekBar.MethodID.init_method_2,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    public convenience init(context: AndroidSDK.Content.Context, attrs: JavaObject, defStyleAttr: Int) {
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava(value: context, locals: &__locals)
        __args[1] = JNIType.toJava(value: attrs, locals: &__locals)
        __args[2] = jvalue(i: jint(defStyleAttr))
        
        let __object = JNIMethod.NewObject(
            className: JNICacheAbsSeekBar.className,
            classCache: &JNICacheAbsSeekBar.jniClass,
            methodSig: "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
            methodCache: &JNICacheAbsSeekBar.MethodID.init_method_3,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    public convenience init(context: AndroidSDK.Content.Context, attrs: JavaObject, defStyleAttr: Int, defStyleRes: Int) {
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava(value: context, locals: &__locals)
        __args[1] = JNIType.toJava(value: attrs, locals: &__locals)
        __args[2] = jvalue(i: jint(defStyleAttr))
        __args[3] = jvalue(i: jint(defStyleRes))
        
        let __object = JNIMethod.NewObject(
            className: JNICacheAbsSeekBar.className,
            classCache: &JNICacheAbsSeekBar.jniClass,
            methodSig: "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
            methodCache: &JNICacheAbsSeekBar.MethodID.init_method_4,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    open override func setMax(_ max: Int) {
        
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava(value: max, locals: &__locals)
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setMax",
            methodSig: "(I)V",
            methodCache: &JNICacheAbsSeekBar.MethodID.setMax,
            args: &__args,
            locals: &__locals )
    }
    
    open override func setMin(_ max: Int) {
        
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava(value: max, locals: &__locals)
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setMin",
            methodSig: "(I)V",
            methodCache: &JNICacheAbsSeekBar.MethodID.setMin,
            args: &__args,
            locals: &__locals )
    }
}

public extension AndroidAbsSeekBar {
    
    func setKeyProgressIncrement(_ increment: Int) {
        
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava(value: increment, locals: &__locals)
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setKeyProgressIncrement",
            methodSig: "(I)V",
            methodCache: &JNICacheAbsSeekBar.MethodID.setKeyProgressIncrement,
            args: &__args,
            locals: &__locals )
    }
}

internal extension AndroidAbsSeekBar {
    
    /// JNI Cache
    struct JNICacheAbsSeekBar {
        
        static let classSignature = AndroidSDK.Widget.className(["AbsSeekBar"])
        
        /// JNI Java class name
        static let className = classSignature.rawValue
        
        /// JNI Java class
        static var jniClass: jclass?
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var init_method_1: jmethodID?
            static var init_method_2: jmethodID?
            static var init_method_3: jmethodID?
            static var init_method_4: jmethodID?
            static var setMax: jmethodID?
            static var setMin: jmethodID?
            static var setKeyProgressIncrement: jmethodID?
        }
    }
}
