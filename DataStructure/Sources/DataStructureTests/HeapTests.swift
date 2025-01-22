//
//  HeapTests.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

import XCTest
@testable import DataStructure

final class HeapTests: XCTestCase {
    
    func testHeapInitialization() {
        let heap = Heap(sort: <, elements: [3, 2, 8, 5, 0])
        XCTAssertEqual(heap.peek(), 0)
    }

    func testHeapInsert() {
        var heap = Heap<Int>(sort: >)
        heap.insert(5)
        heap.insert(3)
        heap.insert(8)
        XCTAssertEqual(heap.peek(), 8)
    }

    func testHeapRemove() {
        var heap = Heap<Int>(sort: <, elements: [3, 2, 8, 5, 0])
        XCTAssertEqual(heap.remove(), 0)
        XCTAssertEqual(heap.remove(), 2)
        XCTAssertEqual(heap.remove(), 3)
    }

    func testHeapSiftUpAndDown() {
        var heap = Heap<Int>(sort: >, elements: [1, 3, 5, 7])
        heap.insert(6)
        XCTAssertEqual(heap.peek(), 7)
        _ = heap.remove()
        XCTAssertEqual(heap.peek(), 6)
    }
}
