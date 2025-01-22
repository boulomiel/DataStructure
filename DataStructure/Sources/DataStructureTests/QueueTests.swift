//
//  QueueTests.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//
import XCTest
@testable import DataStructure

final class QueueTests: XCTestCase {
    
    func testQueueInitialization() {
        let queue = Queue<Int>()
        XCTAssertTrue(queue.isEmpty)
        XCTAssertNil(queue.peek)
    }

    func testQueueEnqueue() {
        var queue = Queue<Int>()
        XCTAssertTrue(queue.enqueue(1))
        XCTAssertTrue(queue.enqueue(2))
        XCTAssertEqual(queue.peek, 1)
    }

    func testQueueDequeue() {
        var queue = Queue<Int>()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        XCTAssertEqual(queue.dequeue(), 1)
        XCTAssertEqual(queue.dequeue(), 2)
        XCTAssertEqual(queue.dequeue(), 3)
        XCTAssertTrue(queue.isEmpty)
    }

    func testQueuePeek() {
        var queue = Queue<Int>()
        queue.enqueue(10)
        XCTAssertEqual(queue.peek, 10)
    }

    func testQueueMixedOperations() {
        var queue = Queue<String>()
        queue.enqueue("A")
        queue.enqueue("B")
        _ = queue.dequeue()
        queue.enqueue("C")
        XCTAssertEqual(queue.peek, "B")
    }
}
