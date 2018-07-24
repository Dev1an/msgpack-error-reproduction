import XCTest
@testable import msgpack
@testable import MessagePack

struct DemoData: Codable {
	let compact: Bool
	let schema: Int
}

final class msgpackTests: XCTestCase {
	
    func testExample() {
		let data = Data.init(bytes: "82 a7 63 6f 6d 70 61 63 74 c3 a6 73 63 68 65 6d 61 cc 80".split(separator: " ").map {UInt8($0, radix: 16)!})
		let decodedData = try! MessagePackDecoder().decode(DemoData.self, from: data)
		
        XCTAssertEqual(decodedData.schema, 0)
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
