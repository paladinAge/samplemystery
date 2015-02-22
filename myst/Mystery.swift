//
//  Mystery.swift
//  myst
//
//  Created by inuzuka on 2015/02/22.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import Foundation

class Mystery {
    var mystesyImageFileName:String
    var correctAnswer:String
    
    init(mysteryImage:String, answer:String) {
        mystesyImageFileName = mysteryImage
        correctAnswer = answer
    }
}