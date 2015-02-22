//
//  TopViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/18.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 画像を読み込み
        let myImage: UIImage = UIImage(named: "crossword.gif")!
        // 画面に画像を設定する
        image.image = myImage
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
    }
    

    
}