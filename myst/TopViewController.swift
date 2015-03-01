//
//  TopViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/18.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {
    

    @IBOutlet weak var opening: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //背景を黒にする
        self.view.backgroundColor  = UIColor(white: 0, alpha: 1)
        
        // 画像を読み込み
        let openingImage: UIImage = UIImage(named: "opening.png")!
        
        // 画面の画像領域に画像を設定する
        opening.image = openingImage
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
    }
    

    
}