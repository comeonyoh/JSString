//
//  JSString.swift
//  JSString
//
//  Created by KimJungSu on 2016. 9. 29..
//  Copyright © 2016년 ODOV. All rights reserved.
//

import Foundation


struct JSRange {
    
    var start = 0
    
    var length = 0
    
}

extension String {
    
    /**
     * return the length of string
     */
    
    func length() -> Int {
        return self.characters.count
    }
    

    /**
     * substring methods.
     */
    
    func substring(_ to: Int) -> String {
        return self.substring(withRange: JSRange.init(start: 0, length: to))
    }

    func substring(start from: Int) -> String {
        return self.substring(withRange: JSRange.init(start: from, length: self.length() - from))
    }
    
    func substring(withRange range: JSRange) -> String {
        
        if range.start < 0 || range.length < 0 {
            return self
        }
        
        let subrange = self.index(self.startIndex, offsetBy: range.start)..<self.index(self.startIndex, offsetBy: range.start + range.length)
        
        return self.substring(with: subrange)
    }

    func substring(start from: Int, withLength length: Int) -> String {
        return self.substring(withRange: JSRange.init(start: from, length: from + length))
    }
    
}
