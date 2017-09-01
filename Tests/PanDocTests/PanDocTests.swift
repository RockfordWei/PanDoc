import XCTest
@testable import PanDoc
import PerfectLib

class PanDocTests: XCTestCase {
    func testExample() {
        do {
          try PanDocConvert (
            sourceFile: "testdoc.docx",
            sourceType: "docx",
            resultFile: "/tmp/test.html",
            resultType: "html")
          let res = File("/tmp/test.html")
          XCTAssertTrue(res.exists)
        }catch {
          XCTFail("\(error)")
        }
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
