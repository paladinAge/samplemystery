//
//  SecondViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/16.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    

    @IBOutlet weak var question3: UIImageView!
    
    @IBOutlet weak var answer2: UIImageView!
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var answer3: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        let answer2: UIImage = UIImage(named: "answer2.png")!
        // 画面に画像を設定する
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 画像を読み込み
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        let questionImage3: UIImage = UIImage(named: "question3.png")!
        
        
        // 画面に画像を設定する
        errorMessage.text = ""
        question3.image = questionImage3
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
        errorMessage.text = ""
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        errorMessage.textColor = UIColor.redColor()
        if answer3.text.isEmpty {
            errorMessage.text = "答えを入力してください"
            return false
        }
        if answer3.text != "カギアナ" {
            errorMessage.text = "不正解！！！"
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        println(answer3.text)
        var secondViewController:ForthViewController = segue.destinationViewController as ForthViewController
    }
    
    
}
