//
//  Created by Cihat Gündüz on 27.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import Foundation

/// A binding wrapper to track changes on array properties.
public class ObservableArrayProperty<ValueType> {
    // MARK: - Stored Instance Properties
    private var didSetClosures: [([ValueType]) -> Void] = []

    /// The value encapsulated within the observable property wrapper.
    public private(set) var array: [ValueType]

    // MARK: - Initializers
    /// Creates a new observable property with the given initial value.
    public init(_ array: [ValueType]) {
        self.array = array
    }

    // MARK: - Instance Methods
    /// Will be called after the wrapped value is changed.
    /// `$0` is the passed parameter (usually `self`), `$1` is the new value.
    public func didSet<WeakObject: AnyObject>(weak object: WeakObject, _ closure: @escaping (WeakObject, [ValueType]) -> Void) {
        let weakClosure: ([ValueType]) -> Void = { [weak object] array in
            guard let object = object else { return }
            closure(object, array)
        }

        didSetClosures.append(weakClosure)
        weakClosure(array)
    }

    /// Use to change the value wrapped as a variable.
    public func set(_ newArray: [ValueType]) {
        array = newArray
        didSetClosures.forEach { $0(array) }
    }

    /// Adds a new element to the end of the array.
    public func append(_ newElement: ValueType) {
        array.append(newElement)
        didSetClosures.forEach { $0(array) }
    }

    // Inserts a new element at given index.
    public func insert(_ newElement: ValueType, at index: Int) {
        array.insert(newElement, at: index)
        didSetClosures.forEach { $0(array) }
    }

    /// Removes an element from the array.
    public func remove(at index: Int) {
        array.remove(at: index)
        didSetClosures.forEach { $0(array) }
    }

    /// Removes all appearances in an array.
    public func removeAll(where predicate: (ValueType) -> Bool) {
        array.removeAll(where: predicate)
        didSetClosures.forEach { $0(array) }
    }
}
