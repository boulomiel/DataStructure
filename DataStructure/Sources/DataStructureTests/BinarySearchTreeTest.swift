//
//  BinarySearchTreeTest.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

import XCTest
@testable import DataStructure

final class BinarySearchTreeTests: XCTestCase {
    
    func testInsert() {
        var bst = BinarySearchTree<Int>()
        bst.insert(10)
        bst.insert(5)
        bst.insert(15)
        bst.insert(3)
        bst.insert(7)

        XCTAssert(bst.contains(15))
        XCTAssert(bst.contains(10))
        XCTAssert(bst.contains(7))
        XCTAssert(bst.contains(5))
        XCTAssert(bst.contains(3))
    }

    func testContains() {
        var bst = BinarySearchTree<Int>()
        bst.insert(10)
        bst.insert(5)
        bst.insert(15)

        XCTAssertTrue(bst.contains(10))
        XCTAssertTrue(bst.contains(5))
        XCTAssertTrue(bst.contains(15))
        XCTAssertFalse(bst.contains(20))
        XCTAssertFalse(bst.contains(1))
    }

    func testRemoveLeafNode() {
        var bst = BinarySearchTree<Int>()
        bst.insert(10)
        bst.insert(5)
        bst.insert(15)
        bst.remove(5)
        
        XCTAssert(bst.contains(15))
        XCTAssert(bst.contains(10))

    }

    func testRemoveNodeWithOneChild() {
        var bst = BinarySearchTree<Int>()
        bst.insert(10)
        bst.insert(5)
        bst.insert(15)
        bst.insert(3)

        bst.remove(5)
        XCTAssert(bst.contains(15))
        XCTAssert(bst.contains(10))
        XCTAssert(bst.contains(3))
    }

    func testRemoveNodeWithTwoChildren() {
        var bst = BinarySearchTree<Int>()
        bst.insert(10)
        bst.insert(5)
        bst.insert(15)
        bst.insert(3)
        bst.insert(7)

        bst.remove(5)
        XCTAssert(bst.contains(15))
        XCTAssert(bst.contains(10))
        XCTAssert(bst.contains(7))
        XCTAssert(bst.contains(3))
    }

    func testEmptyTree() {
        let bst = BinarySearchTree<Int>()
        XCTAssertEqual(bst.description, "empty tree")
    }

    func testInOrderTraversal() {
        var bst = BinarySearchTree<Int>()
        bst.insert(10)
        bst.insert(5)
        bst.insert(15)
        bst.insert(3)
        bst.insert(7)

        var result: [Int] = []
        bst.root?.traverseInOrder { result.append($0) }

        XCTAssertEqual(result, [3, 5, 7, 10, 15])
    }

    func testPreOrderTraversal() {
        var bst = BinarySearchTree<Int>()
        bst.insert(10)
        bst.insert(5)
        bst.insert(15)
        bst.insert(3)
        bst.insert(7)

        var result: [Int] = []
        bst.root?.traversePreOrder { result.append($0) }

        XCTAssertEqual(result, [10, 5, 3, 7, 15])
    }

    func testPostOrderTraversal() {
        var bst = BinarySearchTree<Int>()
        bst.insert(10)
        bst.insert(5)
        bst.insert(15)
        bst.insert(3)
        bst.insert(7)

        var result: [Int] = []
        bst.root?.traversePostOrder { result.append($0) }

        XCTAssertEqual(result, [3, 7, 5, 15, 10])
    }
}
