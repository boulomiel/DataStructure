//
//  PriorityQueueTests.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//
import XCTest
@testable import DataStructure

final class PriorityQueueTests: XCTestCase {
    
    func testPriorityQueueInitialization() {
        let queue = PriorityQueue(sort: >, elements: [1, 2, 3])
        XCTAssertEqual(queue.peek, 3)
    }

    func testPriorityQueueEnqueue() {
        var queue = PriorityQueue<Int>(sort: <)
        _ = queue.enqueue(5)
        _ = queue.enqueue(3)
        _ = queue.enqueue(8)
        XCTAssertEqual(queue.peek, 3)
    }

    func testPriorityQueueDequeue() {
        var queue = PriorityQueue(sort: >, elements: [1, 2, 3])
        XCTAssertEqual(queue.dequeue(), 3)
        XCTAssertEqual(queue.dequeue(), 2)
        XCTAssertEqual(queue.dequeue(), 1)
        XCTAssertTrue(queue.isEmpty)
    }
}
