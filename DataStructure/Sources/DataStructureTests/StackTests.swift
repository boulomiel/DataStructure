//
//  StackTests.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

import XCTest
@testable import DataStructure

final class StackTests: XCTestCase {
    
    func testStackInitialization() {
        let emptyStack = Stack<Int>()
        XCTAssertTrue(emptyStack.isEmpty)
        
        let stackWithElements = Stack([1, 2, 3])
        XCTAssertEqual(stackWithElements.peek(), 3)
        XCTAssertFalse(stackWithElements.isEmpty)
    }
    
    func testPush() {
        var stack = Stack<String>()
        stack.push("A")
        stack.push("B")
        stack.push("C")
        
        XCTAssertEqual(stack.peek(), "C")
        XCTAssertFalse(stack.isEmpty)
    }
    
    func testPop() {
        var stack = Stack<Int>([10, 20, 30])
        XCTAssertEqual(stack.pop(), 30)
        XCTAssertEqual(stack.pop(), 20)
        XCTAssertEqual(stack.pop(), 10)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertNil(stack.pop())
    }
    
    func testPeek() {
        var stack = Stack<Double>()
        XCTAssertNil(stack.peek()) // Empty stack
        
        stack.push(5.5)
        XCTAssertEqual(stack.peek(), 5.5)
        
        stack.push(10.1)
        XCTAssertEqual(stack.peek(), 10.1)
    }
    
    func testIsEmpty() {
        var stack = Stack<Int>()
        XCTAssertTrue(stack.isEmpty)
        
        stack.push(1)
        XCTAssertFalse(stack.isEmpty)
        
        _ = stack.pop()
        XCTAssertTrue(stack.isEmpty)
    }
    
    func testStackOrder() {
        var stack = Stack<Character>()
        stack.push("A")
        stack.push("B")
        stack.push("C")
        
        XCTAssertEqual(stack.pop(), "C") // LIFO order
        XCTAssertEqual(stack.pop(), "B")
        XCTAssertEqual(stack.pop(), "A")
    }
}
