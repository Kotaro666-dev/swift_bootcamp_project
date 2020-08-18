//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Kotaro Kamashima on 17/08/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let q: String
    let a: String
    
    init(q: String, a: String) {
        self.q = q
        self.a = a
    }
}
