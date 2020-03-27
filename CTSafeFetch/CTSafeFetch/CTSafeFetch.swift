//
//  CTSafeFetch.swift
//  CTSafeFetch
//
//  Created by casa on 2020/3/27.
//  Copyright © 2020 casa. All rights reserved.
//

import Foundation

public func safeFetch<T>(from:Any?, key:AnyHashable, defaultValue:T) -> T {
    guard let data = from as? [AnyHashable:Any] else { return defaultValue }
    if let result = data[key] as? T {
        return result
    }
    return defaultValue
}

public func safeFetch<T>(from:Any?, index:Int, defaultValue:T) -> T {
    guard let list = from as? [Any] else { return defaultValue }
    if index < list.count, let result = list[index] as? T {
        return result
    }
    return defaultValue
}
