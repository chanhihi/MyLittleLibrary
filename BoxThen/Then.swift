//
//  File.swift
//  
//
//  Created by Chan on 2024/02/01.
//

import UIKit

public protocol Then {}

public extension Then where Self: AnyObject {

    func then(block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
    
}

extension UIView: Then {}
