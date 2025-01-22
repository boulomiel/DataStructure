//
//  AVLTreeTests.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

import XCTest
@testable import DataStructure

final class AVLTreeTests: XCTestCase {
    
    func testInsert() {
        var avl = AVLTree<Int>()
        avl.insert(10)
        avl.insert(20)
        avl.insert(30)
        avl.insert(40)
        avl.insert(50)

        // AVL property ensures tree height remains balanced
        XCTAssertEqual(avl.root?.value, 20)
        XCTAssertEqual(avl.root?.leftChild?.value, 10)
        XCTAssertEqual(avl.root?.rightChild?.value, 40)
        XCTAssertEqual(avl.root?.leftChild?.rightChild?.value, nil)
        XCTAssertEqual(avl.root?.rightChild?.rightChild?.value, 50)
    }

    func testContains() {
        var avl = AVLTree<Int>()
        avl.insert(10)
        avl.insert(20)
        avl.insert(30)

        XCTAssertTrue(avl.contains(20))
        XCTAssertFalse(avl.contains(40))
        XCTAssertTrue(avl.contains(10))
    }

    func testRemoveLeafNode() {
        var avl = AVLTree<Int>()
        avl.insert(10)
        avl.insert(20)
        avl.insert(30)
        avl.remove(30)

        XCTAssertFalse(avl.contains(30))
        XCTAssertTrue(avl.contains(10))
        XCTAssertTrue(avl.contains(20))
    }

    func testRemoveNodeWithOneChild() {
        var avl = AVLTree<Int>()
        avl.insert(10)
        avl.insert(20)
        avl.insert(5)
        avl.insert(3)
        avl.remove(5)

        XCTAssertFalse(avl.contains(5))
        XCTAssertTrue(avl.contains(10))
        XCTAssertTrue(avl.contains(3))
    }

    func testRemoveNodeWithTwoChildren() {
        var avl = AVLTree<Int>()
        avl.insert(10)
        avl.insert(20)
        avl.insert(30)
        avl.insert(15)
        avl.remove(20)

        XCTAssertFalse(avl.contains(20))
        XCTAssertTrue(avl.contains(10))
        XCTAssertTrue(avl.contains(15))
        XCTAssertTrue(avl.contains(30))
    }

    func testInOrderTraversal() {
        var avl = AVLTree<Int>()
        avl.insert(10)
        avl.insert(20)
        avl.insert(30)
        avl.insert(40)
        avl.insert(50)

        var result: [Int] = []
        avl.root?.traverseInOrder { result.append($0) }

        XCTAssertEqual(result, [10, 20, 30, 40, 50])
    }

    func testPreOrderTraversal() {
        var avl = AVLTree<Int>()
        avl.insert(10)
        avl.insert(20)
        avl.insert(30)
        avl.insert(40)
        avl.insert(50)

        var result: [Int] = []
        avl.root?.traversePreOrder { result.append($0) }

        XCTAssertEqual(result, [20, 10, 40, 30, 50])
    }

    func testPostOrderTraversal() {
        var avl = AVLTree<Int>()
        avl.insert(10)
        avl.insert(20)
        avl.insert(30)
        avl.insert(40)
        avl.insert(50)

        var result: [Int] = []
        avl.root?.traversePostOrder { result.append($0) }

        XCTAssertEqual(result, [10, 30, 50, 40, 20])
    }
}
