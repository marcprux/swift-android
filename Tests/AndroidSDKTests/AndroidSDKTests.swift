import Foundation
import XCTest
import AndroidSDK

class AndroidSDKTests: XCTestCase {
    func testAndroidSDK() {
        XCTAssertEqual(0, 0)
        //let app = AndroidSDKTestsApplication()
    }
}

@_silgen_name("AndroidSDKMainApplication")
internal func AndroidSDKMainApplication() -> SwiftApplication.Type {
    return AndroidSDKTestsApplication.self
}


class AndroidSDKTestsApplication : SwiftApplication {

}
