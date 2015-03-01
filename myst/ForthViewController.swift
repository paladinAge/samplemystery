//
//  ForthViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/18.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {
    
    
    
    var param = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
    }
    
}