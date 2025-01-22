//
//  LinkedListTests.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//


import XCTest
@testable import DataStructure

final class LinkedListTests: XCTestCase {

    func testPush() {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)
        
        XCTAssertEqual(list.head?.value, 3)
        XCTAssertEqual(list.head?.next?.value, 2)
        XCTAssertEqual(list.head?.next?.next?.value, 1)
    }

    func testAppend() {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)
        
        XCTAssertEqual(list.head?.value, 1)
        XCTAssertEqual(list.head?.next?.value, 2)
        XCTAssertEqual(list.head?.next?.next?.value, 3)
    }

    func testPop() {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)
        
        let poppedValue = list.pop()
        XCTAssertEqual(poppedValue, 3)
        XCTAssertEqual(list.head?.value, 2)
    }

    func testRemoveLast() {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)
        
        let removedValue = list.removeLast()
        XCTAssertEqual(removedValue, 3)
        XCTAssertEqual(list.tail?.value, 2)
    }

    func testInsertAfter() {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(3)
        let node = list.head!
        
        let insertedNode = list.insert(2, after: node)
        XCTAssertEqual(insertedNode.value, 2)
        XCTAssertEqual(node.next?.value, 2)
        XCTAssertEqual(node.next?.next?.value, 3)
    }

    func testRemoveAfter() {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)
        let node = list.head!
        
        let removedValue = list.remove(after: node)
        XCTAssertEqual(removedValue, 2)
        XCTAssertEqual(list.head!.next?.value, 3)
    }

    func testCollectionConformance() {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)
        
        XCTAssertEqual(list.map { $0 }, [1, 2, 3])
    }

    func testIsEmpty() {
        var list = LinkedList<Int>()
        XCTAssertTrue(list.isEmpty)
        
        list.append(1)
        XCTAssertFalse(list.isEmpty)
    }

}
