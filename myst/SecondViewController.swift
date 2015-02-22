//
//  SecondViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/16.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    var param = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label3.text = param
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
    }
    
}
