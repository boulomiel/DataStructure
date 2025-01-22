# Data Structures in Swift

Welcome to the **Data Structures in Swift** package! This library provides efficient and easy-to-use implementations of common data structures written in Swift, including:

- **Heap**
- **Priority Queue**
- **Queue**
- **Stack**
- **Tree**
- **Trie**

## Features

- All data structures are implemented with performance and usability in mind.
- Generic support for customizable data types.
- Extensive unit tests for correctness.
- Lightweight, with no external dependencies.

---

## Installation

### Using Swift Package Manager (SPM)

1. Open your Swift project in Xcode.
2. Go to **File > Add Packages...**.
3. Enter the following URL:
   ```plaintext
   https://github.com/boulomiel/DataStructure.git
   ```
4. Choose the desired version or branch, and click **Add Package**.

Alternatively, add this to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/boulomiel/DataStructure.git", from: "1.0.0")
]
```

---

## Usage

### Heap

```swift
import DataStructures

// Create a max-heap of integers
var maxHeap = Heap(sort: >, elements: [3, 1, 4, 1, 5, 9])
print(maxHeap.peek()!)  // Prints: 9

// Insert an element
maxHeap.insert(7)

// Remove the largest element
let removed = maxHeap.remove()
print(removed!)  // Prints: 9
```

### Priority Queue

```swift
import DataStructures

var priorityQueue = PriorityQueue(sort: <)
priorityQueue.enqueue(10)
priorityQueue.enqueue(5)
priorityQueue.enqueue(8)

print(priorityQueue.peek!)  // Prints: 5
print(priorityQueue.dequeue()!)  // Prints: 5
```

### Queue

```swift
import DataStructures

var queue = Queue<String>()
queue.enqueue("First")
queue.enqueue("Second")

print(queue.dequeue()!)  // Prints: First
```

---

## Documentation

### Available Structures

- **Heap**
  - Binary heap supporting max-heap or min-heap logic.
- **Priority Queue**
  - A queue that dequeues elements based on priority.
- **Queue**
  - A traditional FIFO queue.
- **Stack**
  - A traditional LIFO stack.
- **Tree**
  - A generic tree with support for depth-first traversal.
- **Trie**
  - A prefix tree optimized for searching collections of elements.

---

## Testing

To run the test suite:

```bash
swift test
```

---
