//
//  Mystery.swift
//  myst
//
//  Created by inuzuka on 2015/02/22.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import Foundation

class Mystery {
    var mystesyImageFileName:String {
        
        get {
            return self.mystesyImageFileName
        }
        set {
            println(newValue)
            self.mystesyImageFileName = newValue
        }
    }
    var correctAnswer:String {
        get {
            return self.correctAnswer
        }
        set {
            self.correctAnswer = newValue
        }
    }
    
    init(mysteryImage:String, answer:String) {
        self.mystesyImageFileName = mysteryImage
        self.correctAnswer = answer
    }
    
}