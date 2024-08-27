//
//  Loopable.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/27/24.
//

protocol Loopable {
    func allProperties(limit: Int) -> [String: Any]
}

extension Loopable {
    func allProperties(limit: Int = Int.max) -> [String: Any] {
        return props(obj: self, count: 0, limit: limit)
    }
    
    private func props(obj: Any, count: Int, limit: Int) -> [String: Any] {
        let mirror = Mirror(reflecting: obj)
        var result: [String: Any] = [:]
        for (property, value) in mirror.children {
            var val = value
            
            if let values = value as? [Loopable] {
                var vals = [Any]()
                for val in values {
                    vals.append(val.allProperties())
                }
                val = vals
            }
            
            guard let prop = property else { continue }
            if limit == count {
                result[prop] = unpackValue(val)
            } else {
                let subResult = props(obj: val, count: count + 1, limit: limit)
                result[prop] = subResult.isEmpty ? unpackValue(val) : unpackValue(subResult)
            }
        }
        
        return result
    }
    
    private func unpackValue(_ value: Any) -> Any {
        var unpacked: Any
        var changed = false
        if let value = value as? [String: Any] {
            if let v1 = value["value"] {
                unpacked = v1
                changed = true
            } else if let v2 = value["some"] {
                unpacked = v2
                changed = true
            } else {
                unpacked = value
            }
        } else {
            unpacked = value
        }
        
        if let deeper = unpacked as? [String: Any], changed {
            return unpackValue(deeper)
        } else {
            return unpacked
        }
    }
}
